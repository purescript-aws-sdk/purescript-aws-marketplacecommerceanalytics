## Module AWS.MarketplaceCommerceAnalytics.Types

#### `options`

``` purescript
options :: Options
```

#### `CustomerDefinedValues`

``` purescript
newtype CustomerDefinedValues
  = CustomerDefinedValues (StrMap OptionalValue)
```

##### Instances
``` purescript
Newtype CustomerDefinedValues _
Generic CustomerDefinedValues _
Show CustomerDefinedValues
Decode CustomerDefinedValues
Encode CustomerDefinedValues
```

#### `DataSetPublicationDate`

``` purescript
newtype DataSetPublicationDate
  = DataSetPublicationDate Timestamp
```

##### Instances
``` purescript
Newtype DataSetPublicationDate _
Generic DataSetPublicationDate _
Show DataSetPublicationDate
Decode DataSetPublicationDate
Encode DataSetPublicationDate
```

#### `DataSetRequestId`

``` purescript
newtype DataSetRequestId
  = DataSetRequestId String
```

##### Instances
``` purescript
Newtype DataSetRequestId _
Generic DataSetRequestId _
Show DataSetRequestId
Decode DataSetRequestId
Encode DataSetRequestId
```

#### `DataSetType`

``` purescript
newtype DataSetType
  = DataSetType String
```

##### Instances
``` purescript
Newtype DataSetType _
Generic DataSetType _
Show DataSetType
Decode DataSetType
Encode DataSetType
```

#### `DestinationS3BucketName`

``` purescript
newtype DestinationS3BucketName
  = DestinationS3BucketName String
```

##### Instances
``` purescript
Newtype DestinationS3BucketName _
Generic DestinationS3BucketName _
Show DestinationS3BucketName
Decode DestinationS3BucketName
Encode DestinationS3BucketName
```

#### `DestinationS3Prefix`

``` purescript
newtype DestinationS3Prefix
  = DestinationS3Prefix String
```

##### Instances
``` purescript
Newtype DestinationS3Prefix _
Generic DestinationS3Prefix _
Show DestinationS3Prefix
Decode DestinationS3Prefix
Encode DestinationS3Prefix
```

#### `ExceptionMessage`

``` purescript
newtype ExceptionMessage
  = ExceptionMessage String
```

##### Instances
``` purescript
Newtype ExceptionMessage _
Generic ExceptionMessage _
Show ExceptionMessage
Decode ExceptionMessage
Encode ExceptionMessage
```

#### `FromDate`

``` purescript
newtype FromDate
  = FromDate Timestamp
```

##### Instances
``` purescript
Newtype FromDate _
Generic FromDate _
Show FromDate
Decode FromDate
Encode FromDate
```

#### `GenerateDataSetRequest`

``` purescript
newtype GenerateDataSetRequest
  = GenerateDataSetRequest { dataSetType :: DataSetType, dataSetPublicationDate :: DataSetPublicationDate, roleNameArn :: RoleNameArn, destinationS3BucketName :: DestinationS3BucketName, destinationS3Prefix :: Maybe (DestinationS3Prefix), snsTopicArn :: SnsTopicArn, customerDefinedValues :: Maybe (CustomerDefinedValues) }
```

Container for the parameters to the GenerateDataSet operation.

##### Instances
``` purescript
Newtype GenerateDataSetRequest _
Generic GenerateDataSetRequest _
Show GenerateDataSetRequest
Decode GenerateDataSetRequest
Encode GenerateDataSetRequest
```

#### `newGenerateDataSetRequest`

``` purescript
newGenerateDataSetRequest :: DataSetPublicationDate -> DataSetType -> DestinationS3BucketName -> RoleNameArn -> SnsTopicArn -> GenerateDataSetRequest
```

Constructs GenerateDataSetRequest from required parameters

#### `newGenerateDataSetRequest'`

``` purescript
newGenerateDataSetRequest' :: DataSetPublicationDate -> DataSetType -> DestinationS3BucketName -> RoleNameArn -> SnsTopicArn -> ({ dataSetType :: DataSetType, dataSetPublicationDate :: DataSetPublicationDate, roleNameArn :: RoleNameArn, destinationS3BucketName :: DestinationS3BucketName, destinationS3Prefix :: Maybe (DestinationS3Prefix), snsTopicArn :: SnsTopicArn, customerDefinedValues :: Maybe (CustomerDefinedValues) } -> { dataSetType :: DataSetType, dataSetPublicationDate :: DataSetPublicationDate, roleNameArn :: RoleNameArn, destinationS3BucketName :: DestinationS3BucketName, destinationS3Prefix :: Maybe (DestinationS3Prefix), snsTopicArn :: SnsTopicArn, customerDefinedValues :: Maybe (CustomerDefinedValues) }) -> GenerateDataSetRequest
```

Constructs GenerateDataSetRequest's fields from required parameters

#### `GenerateDataSetResult`

``` purescript
newtype GenerateDataSetResult
  = GenerateDataSetResult { dataSetRequestId :: Maybe (DataSetRequestId) }
```

Container for the result of the GenerateDataSet operation.

##### Instances
``` purescript
Newtype GenerateDataSetResult _
Generic GenerateDataSetResult _
Show GenerateDataSetResult
Decode GenerateDataSetResult
Encode GenerateDataSetResult
```

#### `newGenerateDataSetResult`

``` purescript
newGenerateDataSetResult :: GenerateDataSetResult
```

Constructs GenerateDataSetResult from required parameters

#### `newGenerateDataSetResult'`

``` purescript
newGenerateDataSetResult' :: ({ dataSetRequestId :: Maybe (DataSetRequestId) } -> { dataSetRequestId :: Maybe (DataSetRequestId) }) -> GenerateDataSetResult
```

Constructs GenerateDataSetResult's fields from required parameters

#### `MarketplaceCommerceAnalyticsException`

``` purescript
newtype MarketplaceCommerceAnalyticsException
  = MarketplaceCommerceAnalyticsException { message :: Maybe (ExceptionMessage) }
```

This exception is thrown when an internal service error occurs.

##### Instances
``` purescript
Newtype MarketplaceCommerceAnalyticsException _
Generic MarketplaceCommerceAnalyticsException _
Show MarketplaceCommerceAnalyticsException
Decode MarketplaceCommerceAnalyticsException
Encode MarketplaceCommerceAnalyticsException
```

#### `newMarketplaceCommerceAnalyticsException`

``` purescript
newMarketplaceCommerceAnalyticsException :: MarketplaceCommerceAnalyticsException
```

Constructs MarketplaceCommerceAnalyticsException from required parameters

#### `newMarketplaceCommerceAnalyticsException'`

``` purescript
newMarketplaceCommerceAnalyticsException' :: ({ message :: Maybe (ExceptionMessage) } -> { message :: Maybe (ExceptionMessage) }) -> MarketplaceCommerceAnalyticsException
```

Constructs MarketplaceCommerceAnalyticsException's fields from required parameters

#### `OptionalKey`

``` purescript
newtype OptionalKey
  = OptionalKey String
```

##### Instances
``` purescript
Newtype OptionalKey _
Generic OptionalKey _
Show OptionalKey
Decode OptionalKey
Encode OptionalKey
```

#### `OptionalValue`

``` purescript
newtype OptionalValue
  = OptionalValue String
```

##### Instances
``` purescript
Newtype OptionalValue _
Generic OptionalValue _
Show OptionalValue
Decode OptionalValue
Encode OptionalValue
```

#### `RoleNameArn`

``` purescript
newtype RoleNameArn
  = RoleNameArn String
```

##### Instances
``` purescript
Newtype RoleNameArn _
Generic RoleNameArn _
Show RoleNameArn
Decode RoleNameArn
Encode RoleNameArn
```

#### `SnsTopicArn`

``` purescript
newtype SnsTopicArn
  = SnsTopicArn String
```

##### Instances
``` purescript
Newtype SnsTopicArn _
Generic SnsTopicArn _
Show SnsTopicArn
Decode SnsTopicArn
Encode SnsTopicArn
```

#### `StartSupportDataExportRequest`

``` purescript
newtype StartSupportDataExportRequest
  = StartSupportDataExportRequest { dataSetType :: SupportDataSetType, fromDate :: FromDate, roleNameArn :: RoleNameArn, destinationS3BucketName :: DestinationS3BucketName, destinationS3Prefix :: Maybe (DestinationS3Prefix), snsTopicArn :: SnsTopicArn, customerDefinedValues :: Maybe (CustomerDefinedValues) }
```

Container for the parameters to the StartSupportDataExport operation.

##### Instances
``` purescript
Newtype StartSupportDataExportRequest _
Generic StartSupportDataExportRequest _
Show StartSupportDataExportRequest
Decode StartSupportDataExportRequest
Encode StartSupportDataExportRequest
```

#### `newStartSupportDataExportRequest`

``` purescript
newStartSupportDataExportRequest :: SupportDataSetType -> DestinationS3BucketName -> FromDate -> RoleNameArn -> SnsTopicArn -> StartSupportDataExportRequest
```

Constructs StartSupportDataExportRequest from required parameters

#### `newStartSupportDataExportRequest'`

``` purescript
newStartSupportDataExportRequest' :: SupportDataSetType -> DestinationS3BucketName -> FromDate -> RoleNameArn -> SnsTopicArn -> ({ dataSetType :: SupportDataSetType, fromDate :: FromDate, roleNameArn :: RoleNameArn, destinationS3BucketName :: DestinationS3BucketName, destinationS3Prefix :: Maybe (DestinationS3Prefix), snsTopicArn :: SnsTopicArn, customerDefinedValues :: Maybe (CustomerDefinedValues) } -> { dataSetType :: SupportDataSetType, fromDate :: FromDate, roleNameArn :: RoleNameArn, destinationS3BucketName :: DestinationS3BucketName, destinationS3Prefix :: Maybe (DestinationS3Prefix), snsTopicArn :: SnsTopicArn, customerDefinedValues :: Maybe (CustomerDefinedValues) }) -> StartSupportDataExportRequest
```

Constructs StartSupportDataExportRequest's fields from required parameters

#### `StartSupportDataExportResult`

``` purescript
newtype StartSupportDataExportResult
  = StartSupportDataExportResult { dataSetRequestId :: Maybe (DataSetRequestId) }
```

Container for the result of the StartSupportDataExport operation.

##### Instances
``` purescript
Newtype StartSupportDataExportResult _
Generic StartSupportDataExportResult _
Show StartSupportDataExportResult
Decode StartSupportDataExportResult
Encode StartSupportDataExportResult
```

#### `newStartSupportDataExportResult`

``` purescript
newStartSupportDataExportResult :: StartSupportDataExportResult
```

Constructs StartSupportDataExportResult from required parameters

#### `newStartSupportDataExportResult'`

``` purescript
newStartSupportDataExportResult' :: ({ dataSetRequestId :: Maybe (DataSetRequestId) } -> { dataSetRequestId :: Maybe (DataSetRequestId) }) -> StartSupportDataExportResult
```

Constructs StartSupportDataExportResult's fields from required parameters

#### `SupportDataSetType`

``` purescript
newtype SupportDataSetType
  = SupportDataSetType String
```

##### Instances
``` purescript
Newtype SupportDataSetType _
Generic SupportDataSetType _
Show SupportDataSetType
Decode SupportDataSetType
Encode SupportDataSetType
```


