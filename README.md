# looker-for-pipes

:no_entry_sign: This project is no longer maintained as of March 12, 2016. Please try the new version of lookml-for-salesforce-and-dashdb at https://github.com/ibm-cds-labs/lookml-for-salesforce-and-dashdb

## Overview

looker-for-pipes is a set of LookML files for use with the [Simple Data Pipe](https://developer.ibm.com/clouddataservices/simple-data-pipe/) example app that deploys to the [IBM Bluemix](http://bluemix.net) platform service. The Simple Data Pipe easily moves data from different online sources into IBM’s cloud data warehouse service, [dashDB](http://dashdb.com). With data consolidated in dashDB, users can hook up their own analytics tools.

LookML is a data modeling language for the [Looker](http://www.looker.com/) business intelligence platform. With LookML, BI analysts can describe their data and apply business rules in a higher-level language that Looker converts down to SQL. It hooks right into your warehouse and is great at powering Web dashboards and data exploration.

Below, you’ll find a set of files that deals with [Salesforce.com](http://www.salesforce.com/) (SFDC) data. We’ve written all the LookML for you, and we designed it to solve some of the most common analytics and reporting tasks when warehousing SFDC data. Independent of the data pipe application, Looker customers can use this LookML in their own projects.

## Prerequisites

* A Looker instance or [free trial account](http://www.looker.com/free-trial)
* Access to a SFDC account with admin permissions
* A data movement/ETL tool
* A database (or warehouse) loaded with data
	* Optional: If you plan to deploy our Simple Data Pipe application, [sign up](https://console.ng.bluemix.net/registration/) for an IBM Bluemix account (30-day free trial). See [our tutorial](https://developer.ibm.com/clouddataservices/simple-data-pipe/) for instructions on deploying.
 
## Architecture diagram

![Architecture of Simple Data Pipe example app](http://developer.ibm.com/clouddataservices/wp-content/uploads/sites/47/2015/09/pipesDiagram_looker-for-pipes.png)

## How it works

1. Fork this repository into your own GitHub account.
	* If you customize your LookML to handle proprietary information, you should consider purchasing a private GitHub repository.
2. Install LookML for Salesforce data.
	* Create a Looker database connection. (Looker [docs](http://www.looker.com/docs/admin/admin-settings/create-db-connection).)
	* Create a new Looker project. (Looker [docs](http://www.looker.com/docs/admin/admin-settings/manage-projects#configured-projects).)
	* Configure Git for your project to connect to your looker-for-pipes fork. (Looker [forum](https://discourse.looker.com/t/how-to-configure-git-in-looker-3-18/623).)
	* ([Our tutorial](https://developer.ibm.com/clouddataservices/simple-data-pipe/#setup-Looker-dashDB) steps through this process, with the database connection configured for dashDB.)
3. View your data
	* Access the SFDC dashboard by selecting _Spaces / LookML Dashboards_.
	* Or _Explore_ your data, where your can add or subtract dimensions and measures.

## File list

Type | File Name | Description
------- | -------------- | ----------------
[Dashboard](http://www.looker.com/docs/reference/dashboard-reference) | salesforce.dashboard.lookml | LookML file that powers our SFDC dashboard
[Model](http://www.looker.com/docs/reference/model-reference) | salesforce.model.lookml | LookML file that transforms the SFDC data extracted from your database, to be loaded into Looker Views
[View](http://www.looker.com/docs/reference/view-reference) | account.view.lookml | Describes sf_account table; used in the Looker model
[View](http://www.looker.com/docs/reference/view-reference) | campaign.view.lookml | Describes sf_campaign table; used in the Looker model
[View](http://www.looker.com/docs/reference/view-reference) | campaignmember.view.lookml | Describes sf_campaignmember table; used in the Looker model
[View](http://www.looker.com/docs/reference/view-reference) | contact.view.lookml | Describes sf_contact table; used in the Looker model
[View](http://www.looker.com/docs/reference/view-reference) | lead.view.lookml | Describes sf_lead table; used in the Looker model
[View](http://www.looker.com/docs/reference/view-reference) | opportunity.view.lookml | Describes sf_opportunity table; used in the Looker model

## Need Assistance?

If you have any questions about the technical implementation of Simple Data Pipe or IBM dashDB, ask us on stackoverflow using #SimpleDataPipe

Should you choose to deploy the Simple Data Pipe sample web application, be aware that it includes code to track deployments to Bluemix and other Cloud Foundry platforms. The following information is sent to a [Deployment Tracker](https://github.com/cloudant-labs/deployment-tracker) service on each deployment:

* Application Name (`application_name`)
* Space ID (`space_id`)
* Application Version (`application_version`)
* Application URIs (`application_uris`)

This data is collected from the `VCAP_APPLICATION` environment variable in IBM Bluemix and other Cloud Foundry platforms. This data is used by IBM to track metrics around deployments of sample applications to IBM Bluemix. Only deployments of sample applications that include code to ping the Deployment Tracker service will be tracked.

<small></i>looker-for-pipes is sample code created for the purpose of demonstrating an IBM Bluemix example application. The code is provided as-is with no warranties of any kind, express or implied.</small></i>
