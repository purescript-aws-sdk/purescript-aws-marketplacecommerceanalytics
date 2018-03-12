

-- | Provides AWS Marketplace business intelligence data on-demand.
module AWS.MarketplaceCommerceAnalytics where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
generateDataSet :: forall eff. GenerateDataSetRequest -> Aff (exception :: EXCEPTION | eff) GenerateDataSetResult
generateDataSet = Request.request service method  where
    service = Request.ServiceName "MarketplaceCommerceAnalytics"
    method = Request.MethodName "generateDataSet"


-- | Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available. Returns a unique request identifier that can be used to correlate requests with notifications from the SNS topic. Data sets will be published in comma-separated values (CSV) format with the file name {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name already exists (e.g. if the same data set is requested twice), the original file will be overwritten by the new file. Requires a Role with an attached permissions policy providing Allow permissions for the following actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish, iam:GetRolePolicy.
startSupportDataExport :: forall eff. StartSupportDataExportRequest -> Aff (exception :: EXCEPTION | eff) StartSupportDataExportResult
startSupportDataExport = Request.request service method  where
    service = Request.ServiceName "MarketplaceCommerceAnalytics"
    method = Request.MethodName "startSupportDataExport"


newtype CustomerDefinedValues = CustomerDefinedValues (StrMap.StrMap OptionalValue)
derive instance newtypeCustomerDefinedValues :: Newtype CustomerDefinedValues _
derive instance repGenericCustomerDefinedValues :: Generic CustomerDefinedValues _
instance showCustomerDefinedValues :: Show CustomerDefinedValues where
  show = genericShow
instance decodeCustomerDefinedValues :: Decode CustomerDefinedValues where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCustomerDefinedValues :: Encode CustomerDefinedValues where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DataSetPublicationDate = DataSetPublicationDate Types.Timestamp
derive instance newtypeDataSetPublicationDate :: Newtype DataSetPublicationDate _
derive instance repGenericDataSetPublicationDate :: Generic DataSetPublicationDate _
instance showDataSetPublicationDate :: Show DataSetPublicationDate where
  show = genericShow
instance decodeDataSetPublicationDate :: Decode DataSetPublicationDate where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDataSetPublicationDate :: Encode DataSetPublicationDate where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DataSetRequestId = DataSetRequestId String
derive instance newtypeDataSetRequestId :: Newtype DataSetRequestId _
derive instance repGenericDataSetRequestId :: Generic DataSetRequestId _
instance showDataSetRequestId :: Show DataSetRequestId where
  show = genericShow
instance decodeDataSetRequestId :: Decode DataSetRequestId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDataSetRequestId :: Encode DataSetRequestId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DataSetType = DataSetType String
derive instance newtypeDataSetType :: Newtype DataSetType _
derive instance repGenericDataSetType :: Generic DataSetType _
instance showDataSetType :: Show DataSetType where
  show = genericShow
instance decodeDataSetType :: Decode DataSetType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDataSetType :: Encode DataSetType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DestinationS3BucketName = DestinationS3BucketName String
derive instance newtypeDestinationS3BucketName :: Newtype DestinationS3BucketName _
derive instance repGenericDestinationS3BucketName :: Generic DestinationS3BucketName _
instance showDestinationS3BucketName :: Show DestinationS3BucketName where
  show = genericShow
instance decodeDestinationS3BucketName :: Decode DestinationS3BucketName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDestinationS3BucketName :: Encode DestinationS3BucketName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DestinationS3Prefix = DestinationS3Prefix String
derive instance newtypeDestinationS3Prefix :: Newtype DestinationS3Prefix _
derive instance repGenericDestinationS3Prefix :: Generic DestinationS3Prefix _
instance showDestinationS3Prefix :: Show DestinationS3Prefix where
  show = genericShow
instance decodeDestinationS3Prefix :: Decode DestinationS3Prefix where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDestinationS3Prefix :: Encode DestinationS3Prefix where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where
  show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExceptionMessage :: Encode ExceptionMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype FromDate = FromDate Types.Timestamp
derive instance newtypeFromDate :: Newtype FromDate _
derive instance repGenericFromDate :: Generic FromDate _
instance showFromDate :: Show FromDate where
  show = genericShow
instance decodeFromDate :: Decode FromDate where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFromDate :: Encode FromDate where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | Container for the parameters to the GenerateDataSet operation.
newtype GenerateDataSetRequest = GenerateDataSetRequest 
  { "dataSetType" :: (DataSetType)
  , "dataSetPublicationDate" :: (DataSetPublicationDate)
  , "roleNameArn" :: (RoleNameArn)
  , "destinationS3BucketName" :: (DestinationS3BucketName)
  , "destinationS3Prefix" :: NullOrUndefined.NullOrUndefined (DestinationS3Prefix)
  , "snsTopicArn" :: (SnsTopicArn)
  , "customerDefinedValues" :: NullOrUndefined.NullOrUndefined (CustomerDefinedValues)
  }
derive instance newtypeGenerateDataSetRequest :: Newtype GenerateDataSetRequest _
derive instance repGenericGenerateDataSetRequest :: Generic GenerateDataSetRequest _
instance showGenerateDataSetRequest :: Show GenerateDataSetRequest where
  show = genericShow
instance decodeGenerateDataSetRequest :: Decode GenerateDataSetRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenerateDataSetRequest :: Encode GenerateDataSetRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GenerateDataSetRequest from required parameters
newGenerateDataSetRequest :: DataSetPublicationDate -> DataSetType -> DestinationS3BucketName -> RoleNameArn -> SnsTopicArn -> GenerateDataSetRequest
newGenerateDataSetRequest _dataSetPublicationDate _dataSetType _destinationS3BucketName _roleNameArn _snsTopicArn = GenerateDataSetRequest { "dataSetPublicationDate": _dataSetPublicationDate, "dataSetType": _dataSetType, "destinationS3BucketName": _destinationS3BucketName, "roleNameArn": _roleNameArn, "snsTopicArn": _snsTopicArn, "customerDefinedValues": (NullOrUndefined Nothing), "destinationS3Prefix": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataSetRequest' :: DataSetPublicationDate -> DataSetType -> DestinationS3BucketName -> RoleNameArn -> SnsTopicArn -> ( { "dataSetType" :: (DataSetType) , "dataSetPublicationDate" :: (DataSetPublicationDate) , "roleNameArn" :: (RoleNameArn) , "destinationS3BucketName" :: (DestinationS3BucketName) , "destinationS3Prefix" :: NullOrUndefined.NullOrUndefined (DestinationS3Prefix) , "snsTopicArn" :: (SnsTopicArn) , "customerDefinedValues" :: NullOrUndefined.NullOrUndefined (CustomerDefinedValues) } -> {"dataSetType" :: (DataSetType) , "dataSetPublicationDate" :: (DataSetPublicationDate) , "roleNameArn" :: (RoleNameArn) , "destinationS3BucketName" :: (DestinationS3BucketName) , "destinationS3Prefix" :: NullOrUndefined.NullOrUndefined (DestinationS3Prefix) , "snsTopicArn" :: (SnsTopicArn) , "customerDefinedValues" :: NullOrUndefined.NullOrUndefined (CustomerDefinedValues) } ) -> GenerateDataSetRequest
newGenerateDataSetRequest' _dataSetPublicationDate _dataSetType _destinationS3BucketName _roleNameArn _snsTopicArn customize = (GenerateDataSetRequest <<< customize) { "dataSetPublicationDate": _dataSetPublicationDate, "dataSetType": _dataSetType, "destinationS3BucketName": _destinationS3BucketName, "roleNameArn": _roleNameArn, "snsTopicArn": _snsTopicArn, "customerDefinedValues": (NullOrUndefined Nothing), "destinationS3Prefix": (NullOrUndefined Nothing) }



-- | Container for the result of the GenerateDataSet operation.
newtype GenerateDataSetResult = GenerateDataSetResult 
  { "dataSetRequestId" :: NullOrUndefined.NullOrUndefined (DataSetRequestId)
  }
derive instance newtypeGenerateDataSetResult :: Newtype GenerateDataSetResult _
derive instance repGenericGenerateDataSetResult :: Generic GenerateDataSetResult _
instance showGenerateDataSetResult :: Show GenerateDataSetResult where
  show = genericShow
instance decodeGenerateDataSetResult :: Decode GenerateDataSetResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenerateDataSetResult :: Encode GenerateDataSetResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GenerateDataSetResult from required parameters
newGenerateDataSetResult :: GenerateDataSetResult
newGenerateDataSetResult  = GenerateDataSetResult { "dataSetRequestId": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataSetResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataSetResult' :: ( { "dataSetRequestId" :: NullOrUndefined.NullOrUndefined (DataSetRequestId) } -> {"dataSetRequestId" :: NullOrUndefined.NullOrUndefined (DataSetRequestId) } ) -> GenerateDataSetResult
newGenerateDataSetResult'  customize = (GenerateDataSetResult <<< customize) { "dataSetRequestId": (NullOrUndefined Nothing) }



-- | This exception is thrown when an internal service error occurs.
newtype MarketplaceCommerceAnalyticsException = MarketplaceCommerceAnalyticsException 
  { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeMarketplaceCommerceAnalyticsException :: Newtype MarketplaceCommerceAnalyticsException _
derive instance repGenericMarketplaceCommerceAnalyticsException :: Generic MarketplaceCommerceAnalyticsException _
instance showMarketplaceCommerceAnalyticsException :: Show MarketplaceCommerceAnalyticsException where
  show = genericShow
instance decodeMarketplaceCommerceAnalyticsException :: Decode MarketplaceCommerceAnalyticsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMarketplaceCommerceAnalyticsException :: Encode MarketplaceCommerceAnalyticsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MarketplaceCommerceAnalyticsException from required parameters
newMarketplaceCommerceAnalyticsException :: MarketplaceCommerceAnalyticsException
newMarketplaceCommerceAnalyticsException  = MarketplaceCommerceAnalyticsException { "message": (NullOrUndefined Nothing) }

-- | Constructs MarketplaceCommerceAnalyticsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMarketplaceCommerceAnalyticsException' :: ( { "message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> MarketplaceCommerceAnalyticsException
newMarketplaceCommerceAnalyticsException'  customize = (MarketplaceCommerceAnalyticsException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype OptionalKey = OptionalKey String
derive instance newtypeOptionalKey :: Newtype OptionalKey _
derive instance repGenericOptionalKey :: Generic OptionalKey _
instance showOptionalKey :: Show OptionalKey where
  show = genericShow
instance decodeOptionalKey :: Decode OptionalKey where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOptionalKey :: Encode OptionalKey where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OptionalValue = OptionalValue String
derive instance newtypeOptionalValue :: Newtype OptionalValue _
derive instance repGenericOptionalValue :: Generic OptionalValue _
instance showOptionalValue :: Show OptionalValue where
  show = genericShow
instance decodeOptionalValue :: Decode OptionalValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOptionalValue :: Encode OptionalValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RoleNameArn = RoleNameArn String
derive instance newtypeRoleNameArn :: Newtype RoleNameArn _
derive instance repGenericRoleNameArn :: Generic RoleNameArn _
instance showRoleNameArn :: Show RoleNameArn where
  show = genericShow
instance decodeRoleNameArn :: Decode RoleNameArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleNameArn :: Encode RoleNameArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SnsTopicArn = SnsTopicArn String
derive instance newtypeSnsTopicArn :: Newtype SnsTopicArn _
derive instance repGenericSnsTopicArn :: Generic SnsTopicArn _
instance showSnsTopicArn :: Show SnsTopicArn where
  show = genericShow
instance decodeSnsTopicArn :: Decode SnsTopicArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSnsTopicArn :: Encode SnsTopicArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | Container for the parameters to the StartSupportDataExport operation.
newtype StartSupportDataExportRequest = StartSupportDataExportRequest 
  { "dataSetType" :: (SupportDataSetType)
  , "fromDate" :: (FromDate)
  , "roleNameArn" :: (RoleNameArn)
  , "destinationS3BucketName" :: (DestinationS3BucketName)
  , "destinationS3Prefix" :: NullOrUndefined.NullOrUndefined (DestinationS3Prefix)
  , "snsTopicArn" :: (SnsTopicArn)
  , "customerDefinedValues" :: NullOrUndefined.NullOrUndefined (CustomerDefinedValues)
  }
derive instance newtypeStartSupportDataExportRequest :: Newtype StartSupportDataExportRequest _
derive instance repGenericStartSupportDataExportRequest :: Generic StartSupportDataExportRequest _
instance showStartSupportDataExportRequest :: Show StartSupportDataExportRequest where
  show = genericShow
instance decodeStartSupportDataExportRequest :: Decode StartSupportDataExportRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartSupportDataExportRequest :: Encode StartSupportDataExportRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartSupportDataExportRequest from required parameters
newStartSupportDataExportRequest :: SupportDataSetType -> DestinationS3BucketName -> FromDate -> RoleNameArn -> SnsTopicArn -> StartSupportDataExportRequest
newStartSupportDataExportRequest _dataSetType _destinationS3BucketName _fromDate _roleNameArn _snsTopicArn = StartSupportDataExportRequest { "dataSetType": _dataSetType, "destinationS3BucketName": _destinationS3BucketName, "fromDate": _fromDate, "roleNameArn": _roleNameArn, "snsTopicArn": _snsTopicArn, "customerDefinedValues": (NullOrUndefined Nothing), "destinationS3Prefix": (NullOrUndefined Nothing) }

-- | Constructs StartSupportDataExportRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartSupportDataExportRequest' :: SupportDataSetType -> DestinationS3BucketName -> FromDate -> RoleNameArn -> SnsTopicArn -> ( { "dataSetType" :: (SupportDataSetType) , "fromDate" :: (FromDate) , "roleNameArn" :: (RoleNameArn) , "destinationS3BucketName" :: (DestinationS3BucketName) , "destinationS3Prefix" :: NullOrUndefined.NullOrUndefined (DestinationS3Prefix) , "snsTopicArn" :: (SnsTopicArn) , "customerDefinedValues" :: NullOrUndefined.NullOrUndefined (CustomerDefinedValues) } -> {"dataSetType" :: (SupportDataSetType) , "fromDate" :: (FromDate) , "roleNameArn" :: (RoleNameArn) , "destinationS3BucketName" :: (DestinationS3BucketName) , "destinationS3Prefix" :: NullOrUndefined.NullOrUndefined (DestinationS3Prefix) , "snsTopicArn" :: (SnsTopicArn) , "customerDefinedValues" :: NullOrUndefined.NullOrUndefined (CustomerDefinedValues) } ) -> StartSupportDataExportRequest
newStartSupportDataExportRequest' _dataSetType _destinationS3BucketName _fromDate _roleNameArn _snsTopicArn customize = (StartSupportDataExportRequest <<< customize) { "dataSetType": _dataSetType, "destinationS3BucketName": _destinationS3BucketName, "fromDate": _fromDate, "roleNameArn": _roleNameArn, "snsTopicArn": _snsTopicArn, "customerDefinedValues": (NullOrUndefined Nothing), "destinationS3Prefix": (NullOrUndefined Nothing) }



-- | Container for the result of the StartSupportDataExport operation.
newtype StartSupportDataExportResult = StartSupportDataExportResult 
  { "dataSetRequestId" :: NullOrUndefined.NullOrUndefined (DataSetRequestId)
  }
derive instance newtypeStartSupportDataExportResult :: Newtype StartSupportDataExportResult _
derive instance repGenericStartSupportDataExportResult :: Generic StartSupportDataExportResult _
instance showStartSupportDataExportResult :: Show StartSupportDataExportResult where
  show = genericShow
instance decodeStartSupportDataExportResult :: Decode StartSupportDataExportResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStartSupportDataExportResult :: Encode StartSupportDataExportResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StartSupportDataExportResult from required parameters
newStartSupportDataExportResult :: StartSupportDataExportResult
newStartSupportDataExportResult  = StartSupportDataExportResult { "dataSetRequestId": (NullOrUndefined Nothing) }

-- | Constructs StartSupportDataExportResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartSupportDataExportResult' :: ( { "dataSetRequestId" :: NullOrUndefined.NullOrUndefined (DataSetRequestId) } -> {"dataSetRequestId" :: NullOrUndefined.NullOrUndefined (DataSetRequestId) } ) -> StartSupportDataExportResult
newStartSupportDataExportResult'  customize = (StartSupportDataExportResult <<< customize) { "dataSetRequestId": (NullOrUndefined Nothing) }



newtype SupportDataSetType = SupportDataSetType String
derive instance newtypeSupportDataSetType :: Newtype SupportDataSetType _
derive instance repGenericSupportDataSetType :: Generic SupportDataSetType _
instance showSupportDataSetType :: Show SupportDataSetType where
  show = genericShow
instance decodeSupportDataSetType :: Decode SupportDataSetType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSupportDataSetType :: Encode SupportDataSetType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

