
module AWS.MarketplaceCommerceAnalytics.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype CustomerDefinedValues = CustomerDefinedValues (StrMap.StrMap OptionalValue)
derive instance newtypeCustomerDefinedValues :: Newtype CustomerDefinedValues _
derive instance repGenericCustomerDefinedValues :: Generic CustomerDefinedValues _
instance showCustomerDefinedValues :: Show CustomerDefinedValues where show = genericShow
instance decodeCustomerDefinedValues :: Decode CustomerDefinedValues where decode = genericDecode options
instance encodeCustomerDefinedValues :: Encode CustomerDefinedValues where encode = genericEncode options



newtype DataSetPublicationDate = DataSetPublicationDate Types.Timestamp
derive instance newtypeDataSetPublicationDate :: Newtype DataSetPublicationDate _
derive instance repGenericDataSetPublicationDate :: Generic DataSetPublicationDate _
instance showDataSetPublicationDate :: Show DataSetPublicationDate where show = genericShow
instance decodeDataSetPublicationDate :: Decode DataSetPublicationDate where decode = genericDecode options
instance encodeDataSetPublicationDate :: Encode DataSetPublicationDate where encode = genericEncode options



newtype DataSetRequestId = DataSetRequestId String
derive instance newtypeDataSetRequestId :: Newtype DataSetRequestId _
derive instance repGenericDataSetRequestId :: Generic DataSetRequestId _
instance showDataSetRequestId :: Show DataSetRequestId where show = genericShow
instance decodeDataSetRequestId :: Decode DataSetRequestId where decode = genericDecode options
instance encodeDataSetRequestId :: Encode DataSetRequestId where encode = genericEncode options



newtype DataSetType = DataSetType String
derive instance newtypeDataSetType :: Newtype DataSetType _
derive instance repGenericDataSetType :: Generic DataSetType _
instance showDataSetType :: Show DataSetType where show = genericShow
instance decodeDataSetType :: Decode DataSetType where decode = genericDecode options
instance encodeDataSetType :: Encode DataSetType where encode = genericEncode options



newtype DestinationS3BucketName = DestinationS3BucketName String
derive instance newtypeDestinationS3BucketName :: Newtype DestinationS3BucketName _
derive instance repGenericDestinationS3BucketName :: Generic DestinationS3BucketName _
instance showDestinationS3BucketName :: Show DestinationS3BucketName where show = genericShow
instance decodeDestinationS3BucketName :: Decode DestinationS3BucketName where decode = genericDecode options
instance encodeDestinationS3BucketName :: Encode DestinationS3BucketName where encode = genericEncode options



newtype DestinationS3Prefix = DestinationS3Prefix String
derive instance newtypeDestinationS3Prefix :: Newtype DestinationS3Prefix _
derive instance repGenericDestinationS3Prefix :: Generic DestinationS3Prefix _
instance showDestinationS3Prefix :: Show DestinationS3Prefix where show = genericShow
instance decodeDestinationS3Prefix :: Decode DestinationS3Prefix where decode = genericDecode options
instance encodeDestinationS3Prefix :: Encode DestinationS3Prefix where encode = genericEncode options



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where decode = genericDecode options
instance encodeExceptionMessage :: Encode ExceptionMessage where encode = genericEncode options



newtype FromDate = FromDate Types.Timestamp
derive instance newtypeFromDate :: Newtype FromDate _
derive instance repGenericFromDate :: Generic FromDate _
instance showFromDate :: Show FromDate where show = genericShow
instance decodeFromDate :: Decode FromDate where decode = genericDecode options
instance encodeFromDate :: Encode FromDate where encode = genericEncode options



-- | Container for the parameters to the GenerateDataSet operation.
newtype GenerateDataSetRequest = GenerateDataSetRequest 
  { "dataSetType" :: (DataSetType)
  , "dataSetPublicationDate" :: (DataSetPublicationDate)
  , "roleNameArn" :: (RoleNameArn)
  , "destinationS3BucketName" :: (DestinationS3BucketName)
  , "destinationS3Prefix" :: NullOrUndefined (DestinationS3Prefix)
  , "snsTopicArn" :: (SnsTopicArn)
  , "customerDefinedValues" :: NullOrUndefined (CustomerDefinedValues)
  }
derive instance newtypeGenerateDataSetRequest :: Newtype GenerateDataSetRequest _
derive instance repGenericGenerateDataSetRequest :: Generic GenerateDataSetRequest _
instance showGenerateDataSetRequest :: Show GenerateDataSetRequest where show = genericShow
instance decodeGenerateDataSetRequest :: Decode GenerateDataSetRequest where decode = genericDecode options
instance encodeGenerateDataSetRequest :: Encode GenerateDataSetRequest where encode = genericEncode options

-- | Constructs GenerateDataSetRequest from required parameters
newGenerateDataSetRequest :: DataSetPublicationDate -> DataSetType -> DestinationS3BucketName -> RoleNameArn -> SnsTopicArn -> GenerateDataSetRequest
newGenerateDataSetRequest _dataSetPublicationDate _dataSetType _destinationS3BucketName _roleNameArn _snsTopicArn = GenerateDataSetRequest { "dataSetPublicationDate": _dataSetPublicationDate, "dataSetType": _dataSetType, "destinationS3BucketName": _destinationS3BucketName, "roleNameArn": _roleNameArn, "snsTopicArn": _snsTopicArn, "customerDefinedValues": (NullOrUndefined Nothing), "destinationS3Prefix": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataSetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataSetRequest' :: DataSetPublicationDate -> DataSetType -> DestinationS3BucketName -> RoleNameArn -> SnsTopicArn -> ( { "dataSetType" :: (DataSetType) , "dataSetPublicationDate" :: (DataSetPublicationDate) , "roleNameArn" :: (RoleNameArn) , "destinationS3BucketName" :: (DestinationS3BucketName) , "destinationS3Prefix" :: NullOrUndefined (DestinationS3Prefix) , "snsTopicArn" :: (SnsTopicArn) , "customerDefinedValues" :: NullOrUndefined (CustomerDefinedValues) } -> {"dataSetType" :: (DataSetType) , "dataSetPublicationDate" :: (DataSetPublicationDate) , "roleNameArn" :: (RoleNameArn) , "destinationS3BucketName" :: (DestinationS3BucketName) , "destinationS3Prefix" :: NullOrUndefined (DestinationS3Prefix) , "snsTopicArn" :: (SnsTopicArn) , "customerDefinedValues" :: NullOrUndefined (CustomerDefinedValues) } ) -> GenerateDataSetRequest
newGenerateDataSetRequest' _dataSetPublicationDate _dataSetType _destinationS3BucketName _roleNameArn _snsTopicArn customize = (GenerateDataSetRequest <<< customize) { "dataSetPublicationDate": _dataSetPublicationDate, "dataSetType": _dataSetType, "destinationS3BucketName": _destinationS3BucketName, "roleNameArn": _roleNameArn, "snsTopicArn": _snsTopicArn, "customerDefinedValues": (NullOrUndefined Nothing), "destinationS3Prefix": (NullOrUndefined Nothing) }



-- | Container for the result of the GenerateDataSet operation.
newtype GenerateDataSetResult = GenerateDataSetResult 
  { "dataSetRequestId" :: NullOrUndefined (DataSetRequestId)
  }
derive instance newtypeGenerateDataSetResult :: Newtype GenerateDataSetResult _
derive instance repGenericGenerateDataSetResult :: Generic GenerateDataSetResult _
instance showGenerateDataSetResult :: Show GenerateDataSetResult where show = genericShow
instance decodeGenerateDataSetResult :: Decode GenerateDataSetResult where decode = genericDecode options
instance encodeGenerateDataSetResult :: Encode GenerateDataSetResult where encode = genericEncode options

-- | Constructs GenerateDataSetResult from required parameters
newGenerateDataSetResult :: GenerateDataSetResult
newGenerateDataSetResult  = GenerateDataSetResult { "dataSetRequestId": (NullOrUndefined Nothing) }

-- | Constructs GenerateDataSetResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGenerateDataSetResult' :: ( { "dataSetRequestId" :: NullOrUndefined (DataSetRequestId) } -> {"dataSetRequestId" :: NullOrUndefined (DataSetRequestId) } ) -> GenerateDataSetResult
newGenerateDataSetResult'  customize = (GenerateDataSetResult <<< customize) { "dataSetRequestId": (NullOrUndefined Nothing) }



-- | This exception is thrown when an internal service error occurs.
newtype MarketplaceCommerceAnalyticsException = MarketplaceCommerceAnalyticsException 
  { "message" :: NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeMarketplaceCommerceAnalyticsException :: Newtype MarketplaceCommerceAnalyticsException _
derive instance repGenericMarketplaceCommerceAnalyticsException :: Generic MarketplaceCommerceAnalyticsException _
instance showMarketplaceCommerceAnalyticsException :: Show MarketplaceCommerceAnalyticsException where show = genericShow
instance decodeMarketplaceCommerceAnalyticsException :: Decode MarketplaceCommerceAnalyticsException where decode = genericDecode options
instance encodeMarketplaceCommerceAnalyticsException :: Encode MarketplaceCommerceAnalyticsException where encode = genericEncode options

-- | Constructs MarketplaceCommerceAnalyticsException from required parameters
newMarketplaceCommerceAnalyticsException :: MarketplaceCommerceAnalyticsException
newMarketplaceCommerceAnalyticsException  = MarketplaceCommerceAnalyticsException { "message": (NullOrUndefined Nothing) }

-- | Constructs MarketplaceCommerceAnalyticsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMarketplaceCommerceAnalyticsException' :: ( { "message" :: NullOrUndefined (ExceptionMessage) } -> {"message" :: NullOrUndefined (ExceptionMessage) } ) -> MarketplaceCommerceAnalyticsException
newMarketplaceCommerceAnalyticsException'  customize = (MarketplaceCommerceAnalyticsException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype OptionalKey = OptionalKey String
derive instance newtypeOptionalKey :: Newtype OptionalKey _
derive instance repGenericOptionalKey :: Generic OptionalKey _
instance showOptionalKey :: Show OptionalKey where show = genericShow
instance decodeOptionalKey :: Decode OptionalKey where decode = genericDecode options
instance encodeOptionalKey :: Encode OptionalKey where encode = genericEncode options



newtype OptionalValue = OptionalValue String
derive instance newtypeOptionalValue :: Newtype OptionalValue _
derive instance repGenericOptionalValue :: Generic OptionalValue _
instance showOptionalValue :: Show OptionalValue where show = genericShow
instance decodeOptionalValue :: Decode OptionalValue where decode = genericDecode options
instance encodeOptionalValue :: Encode OptionalValue where encode = genericEncode options



newtype RoleNameArn = RoleNameArn String
derive instance newtypeRoleNameArn :: Newtype RoleNameArn _
derive instance repGenericRoleNameArn :: Generic RoleNameArn _
instance showRoleNameArn :: Show RoleNameArn where show = genericShow
instance decodeRoleNameArn :: Decode RoleNameArn where decode = genericDecode options
instance encodeRoleNameArn :: Encode RoleNameArn where encode = genericEncode options



newtype SnsTopicArn = SnsTopicArn String
derive instance newtypeSnsTopicArn :: Newtype SnsTopicArn _
derive instance repGenericSnsTopicArn :: Generic SnsTopicArn _
instance showSnsTopicArn :: Show SnsTopicArn where show = genericShow
instance decodeSnsTopicArn :: Decode SnsTopicArn where decode = genericDecode options
instance encodeSnsTopicArn :: Encode SnsTopicArn where encode = genericEncode options



-- | Container for the parameters to the StartSupportDataExport operation.
newtype StartSupportDataExportRequest = StartSupportDataExportRequest 
  { "dataSetType" :: (SupportDataSetType)
  , "fromDate" :: (FromDate)
  , "roleNameArn" :: (RoleNameArn)
  , "destinationS3BucketName" :: (DestinationS3BucketName)
  , "destinationS3Prefix" :: NullOrUndefined (DestinationS3Prefix)
  , "snsTopicArn" :: (SnsTopicArn)
  , "customerDefinedValues" :: NullOrUndefined (CustomerDefinedValues)
  }
derive instance newtypeStartSupportDataExportRequest :: Newtype StartSupportDataExportRequest _
derive instance repGenericStartSupportDataExportRequest :: Generic StartSupportDataExportRequest _
instance showStartSupportDataExportRequest :: Show StartSupportDataExportRequest where show = genericShow
instance decodeStartSupportDataExportRequest :: Decode StartSupportDataExportRequest where decode = genericDecode options
instance encodeStartSupportDataExportRequest :: Encode StartSupportDataExportRequest where encode = genericEncode options

-- | Constructs StartSupportDataExportRequest from required parameters
newStartSupportDataExportRequest :: SupportDataSetType -> DestinationS3BucketName -> FromDate -> RoleNameArn -> SnsTopicArn -> StartSupportDataExportRequest
newStartSupportDataExportRequest _dataSetType _destinationS3BucketName _fromDate _roleNameArn _snsTopicArn = StartSupportDataExportRequest { "dataSetType": _dataSetType, "destinationS3BucketName": _destinationS3BucketName, "fromDate": _fromDate, "roleNameArn": _roleNameArn, "snsTopicArn": _snsTopicArn, "customerDefinedValues": (NullOrUndefined Nothing), "destinationS3Prefix": (NullOrUndefined Nothing) }

-- | Constructs StartSupportDataExportRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartSupportDataExportRequest' :: SupportDataSetType -> DestinationS3BucketName -> FromDate -> RoleNameArn -> SnsTopicArn -> ( { "dataSetType" :: (SupportDataSetType) , "fromDate" :: (FromDate) , "roleNameArn" :: (RoleNameArn) , "destinationS3BucketName" :: (DestinationS3BucketName) , "destinationS3Prefix" :: NullOrUndefined (DestinationS3Prefix) , "snsTopicArn" :: (SnsTopicArn) , "customerDefinedValues" :: NullOrUndefined (CustomerDefinedValues) } -> {"dataSetType" :: (SupportDataSetType) , "fromDate" :: (FromDate) , "roleNameArn" :: (RoleNameArn) , "destinationS3BucketName" :: (DestinationS3BucketName) , "destinationS3Prefix" :: NullOrUndefined (DestinationS3Prefix) , "snsTopicArn" :: (SnsTopicArn) , "customerDefinedValues" :: NullOrUndefined (CustomerDefinedValues) } ) -> StartSupportDataExportRequest
newStartSupportDataExportRequest' _dataSetType _destinationS3BucketName _fromDate _roleNameArn _snsTopicArn customize = (StartSupportDataExportRequest <<< customize) { "dataSetType": _dataSetType, "destinationS3BucketName": _destinationS3BucketName, "fromDate": _fromDate, "roleNameArn": _roleNameArn, "snsTopicArn": _snsTopicArn, "customerDefinedValues": (NullOrUndefined Nothing), "destinationS3Prefix": (NullOrUndefined Nothing) }



-- | Container for the result of the StartSupportDataExport operation.
newtype StartSupportDataExportResult = StartSupportDataExportResult 
  { "dataSetRequestId" :: NullOrUndefined (DataSetRequestId)
  }
derive instance newtypeStartSupportDataExportResult :: Newtype StartSupportDataExportResult _
derive instance repGenericStartSupportDataExportResult :: Generic StartSupportDataExportResult _
instance showStartSupportDataExportResult :: Show StartSupportDataExportResult where show = genericShow
instance decodeStartSupportDataExportResult :: Decode StartSupportDataExportResult where decode = genericDecode options
instance encodeStartSupportDataExportResult :: Encode StartSupportDataExportResult where encode = genericEncode options

-- | Constructs StartSupportDataExportResult from required parameters
newStartSupportDataExportResult :: StartSupportDataExportResult
newStartSupportDataExportResult  = StartSupportDataExportResult { "dataSetRequestId": (NullOrUndefined Nothing) }

-- | Constructs StartSupportDataExportResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartSupportDataExportResult' :: ( { "dataSetRequestId" :: NullOrUndefined (DataSetRequestId) } -> {"dataSetRequestId" :: NullOrUndefined (DataSetRequestId) } ) -> StartSupportDataExportResult
newStartSupportDataExportResult'  customize = (StartSupportDataExportResult <<< customize) { "dataSetRequestId": (NullOrUndefined Nothing) }



newtype SupportDataSetType = SupportDataSetType String
derive instance newtypeSupportDataSetType :: Newtype SupportDataSetType _
derive instance repGenericSupportDataSetType :: Generic SupportDataSetType _
instance showSupportDataSetType :: Show SupportDataSetType where show = genericShow
instance decodeSupportDataSetType :: Decode SupportDataSetType where decode = genericDecode options
instance encodeSupportDataSetType :: Encode SupportDataSetType where encode = genericEncode options

