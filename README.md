# CDP Data Hub cluster automation on AWS
<div align="center">
<img src="https://github.com/paulvid/emr_to_cdp/raw/master/data/cloudera_logo_darkorange.png" width="820" height="100" align="middle">
</div>

# Overview

This set of scripts automates the creation of a simple data engineering data hub cluster (assuming you followed naming convention in previous tutorials, see pre-requisites)

# Setup

## Pre-requisites

* CDP environment created (see [Tutorial](https://github.com/paulvid/cdp_create_env_aws/))
* CDP datalake created (see [Tutorial](https://github.com/paulvid/cdp_create_dl_aws))
* AWS cli: Configure AWS cli with your credentials and region
* CDP cli: Configure CDP cli with your credentials and region


## Setup


### 1. Clone this repository
```
git clone https://github.com/paulvid/cdp_create_dh_de_aws.git
```

### 2. Create Data Hub Cluster

```
cdp_create_dh_de.sh <prefix> 
```

### 3. Verify periodically until cluster status is AVAILABLE

```
cdp_describe_dh_de.sh <prefix> 
```


# Authors

**Paul Vidal** - *Initial work* - [LinkedIn](https://www.linkedin.com/in/paulvid/)
