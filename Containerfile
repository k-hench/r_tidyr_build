FROM docker.io/khench/r_vanillr:v0.1
LABEL authors="Kosmas Hench" \
      description="Base R with tidyverse"

# install additional R packages
RUN R --slave -e 'chooseCRANmirror(ind=50); install.packages("tidyverse")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("here")' && \
    R --slave -e 'chooseCRANmirror(ind=50); install.packages("glue")'

    