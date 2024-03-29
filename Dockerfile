FROM fredhutch/r-shiny-server-base:4.3.2

# Install R packages
RUN R -e "install.packages(c('shiny', 'rmarkdown', 'knitr', 'here', 'learnr', 'readxl', 'readr', 'dplyr', 'magrittr', 'stringr', 'purrr', 'tidyr', 'forcats', 'ggplot2', 'directlabels', 'ggrepel', 'broom', 'patchwork'), repos='https://cloud.r-project.org/')"

RUN R -e "install.packages(c('remotes'), repos='https://cloud.r-project.org/')"


RUN R -q -e "remotes::install_github('rstudio/gradethis')"
RUN R -q -e "remotes::install_github('benmarwick/wordcountaddin')"

# New version of ggplot2 has some kind of issue
# https://github.com/jtlandis/ggside/issues/56#issuecomment-1961739620
RUN R -q -e "install.packages('https://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_3.4.4.tar.gz')"

ADD check.R /tmp/


RUN R -q -f /tmp/check.R --args shiny rmarkdown knitr here learnr gradethis readxl readr dplyr magrittr stringr purrr tidyr forcats ggplot2 directlabels ggrepel broom patchwork wordcountaddin remotes

ENV RMARKDOWN_RUN_PRERENDER=0

RUN rm -rf /srv/shiny-server/
ADD . /srv/shiny-server/


RUN R -q -e "rmarkdown::render('index.Rmd')"

RUN chmod -R a-w /srv/shiny-server/


WORKDIR /srv/shiny-server/

CMD R -q -f start.R