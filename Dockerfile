FROM fredhutch/r-shiny-server-base:4.3.2

# Install R packages
RUN R -e "install.packages(c('shiny', 'rmarkdown', 'knitr', 'here', 'learnr', 'readxl', 'readr', 'dplyr', 'magrittr', 'stringr', 'purrr', 'tidyr', 'forcats', 'ggplot2', 'directlabels', 'ggrepel', 'broom', 'patchwork'), repos='https://cloud.r-project.org/')"

RUN R -e "install.packages(c('remotes'), repos='https://cloud.r-project.org/')"


RUN R -q -e "remotes::install_github('rstudio/gradethis')"
RUN R -q -e "remotes::install_github('benmarwick/wordcountaddin')"

ADD check.R /tmp/


RUN R -q -f check.R --args shiny rmarkdown knitr here learnr gradethis readxl readr dplyr magrittr stringr purrr tidyr forcats ggplot2 directlabels ggrepel broom patchwork wordcountaddin remotes

ENV RMARKDOWN_RUN_PRERENDER=0

RUN rm -rf /srv/shiny-server/
ADD . /srv/shiny-server/

RUN chmod -R a-r /srv/shiny-server/

WORKDIR /srv/shiny-server/

