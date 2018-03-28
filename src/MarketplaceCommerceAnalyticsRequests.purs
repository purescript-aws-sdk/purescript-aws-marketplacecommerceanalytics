
module AWS.MarketplaceCommerceAnalytics.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.MarketplaceCommerceAnalytics as MarketplaceCommerceAnalytics
import AWS.MarketplaceCommerceAnalytics.Types as MarketplaceCommerceAnalyticsTypes


-- | Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
generateDataSet :: forall eff. MarketplaceCommerceAnalytics.Service -> MarketplaceCommerceAnalyticsTypes.GenerateDataSetRequest -> Aff (exception :: EXCEPTION | eff) MarketplaceCommerceAnalyticsTypes.GenerateDataSetResult
generateDataSet (MarketplaceCommerceAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "generateDataSet"


-- | Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
startSupportDataExport :: forall eff. MarketplaceCommerceAnalytics.Service -> MarketplaceCommerceAnalyticsTypes.StartSupportDataExportRequest -> Aff (exception :: EXCEPTION | eff) MarketplaceCommerceAnalyticsTypes.StartSupportDataExportResult
startSupportDataExport (MarketplaceCommerceAnalytics.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startSupportDataExport"
