.class public Lcom/urbanairship/AirshipConfigOptions;
.super Ljava/lang/Object;
.source "AirshipConfigOptions.java"


# static fields
.field public static final ADM_TRANSPORT:Ljava/lang/String; = "ADM"

.field private static final DEFAULT_DEVELOPMENT_LOG_LEVEL:I = 0x3

.field private static final DEFAULT_PRODUCTION_LOG_LEVEL:I = 0x6

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "airshipconfig.properties"

.field public static final GCM_TRANSPORT:Ljava/lang/String; = "GCM"

.field private static final MAX_BG_REPORTING_INTERVAL_MS:I = 0x5265c00

.field private static final MIN_BG_REPORTING_INTERVAL_MS:I = 0xea60


# instance fields
.field public additionalGCMSenderIds:[Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "additionalGCMSenderIds"
    .end annotation
.end field

.field public allowedTransports:[Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "allowedTransports"
    .end annotation
.end field

.field public analyticsEnabled:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "analyticsEnabled"
    .end annotation
.end field

.field public analyticsServer:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "analyticsServer"
    .end annotation
.end field

.field public autoLaunchApplication:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "autoLaunchApplication"
    .end annotation
.end field

.field public backgroundReportingIntervalMS:J
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "backgroundReportingIntervalMS"
    .end annotation
.end field

.field public clearNamedUser:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "clearNamedUser"
    .end annotation
.end field

.field public developmentAppKey:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "developmentAppKey"
    .end annotation
.end field

.field public developmentAppSecret:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "developmentAppSecret"
    .end annotation
.end field

.field public developmentLogLevel:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        name = "android.util.Log"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "developmentLogLevel"
    .end annotation
.end field

.field public gcmSender:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "gcmSender"
    .end annotation
.end field

.field public hostURL:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "hostURL"
    .end annotation
.end field

.field public inProduction:Z
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "inProduction"
    .end annotation
.end field

.field public landingPageContentURL:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "landingPageContentURL"
    .end annotation
.end field

.field public minSdkVersion:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        name = "android.os.Build.VERSION_CODES"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "minSdkVersion"
    .end annotation
.end field

.field public productionAppKey:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "productionAppKey"
    .end annotation
.end field

.field public productionAppSecret:Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "productionAppSecret"
    .end annotation
.end field

.field public productionLogLevel:I
    .annotation runtime Lcom/urbanairship/ConstantClass;
        name = "android.util.Log"
    .end annotation

    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "productionLogLevel"
    .end annotation
.end field

.field public whitelist:[Ljava/lang/String;
    .annotation runtime Lcom/urbanairship/PropertyName;
        name = "whitelist"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, "https://device-api.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    .line 120
    const-string v0, "https://combine.urbanairship.com/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    .line 126
    const-string v0, "https://dl.urbanairship.com/aaa/"

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->landingPageContentURL:Ljava/lang/String;

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ADM"

    aput-object v1, v0, v2

    const-string v1, "GCM"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->allowedTransports:[Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->whitelist:[Ljava/lang/String;

    .line 166
    iput-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    .line 174
    iput-boolean v3, p0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    .line 183
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/urbanairship/AirshipConfigOptions;->backgroundReportingIntervalMS:J

    .line 191
    iput-boolean v2, p0, Lcom/urbanairship/AirshipConfigOptions;->clearNamedUser:Z

    .line 206
    const/4 v0, 0x3

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    .line 222
    const/4 v0, 0x6

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    .line 230
    const/4 v0, 0x4

    iput v0, p0, Lcom/urbanairship/AirshipConfigOptions;->minSdkVersion:I

    .line 240
    iput-boolean v3, p0, Lcom/urbanairship/AirshipConfigOptions;->autoLaunchApplication:Z

    return-void
.end method

.method private getPropertyValue(Ljava/lang/reflect/Field;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 327
    .local v1, "propertyValue":Ljava/lang/String;
    const-class v2, Lcom/urbanairship/PropertyName;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/PropertyName;

    .line 329
    .local v0, "propertyAnnotation":Lcom/urbanairship/PropertyName;
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0}, Lcom/urbanairship/PropertyName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirshipConfigOptions - Found PropertyAnnotation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/urbanairship/PropertyName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 334
    :cond_0
    return-object v1
.end method

.method private isLogLevelValid(I)Z
    .locals 1
    .param p1, "logType"    # I

    .prologue
    .line 541
    packed-switch p1, :pswitch_data_0

    .line 550
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 548
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 256
    new-instance v0, Lcom/urbanairship/AirshipConfigOptions;

    invoke-direct {v0}, Lcom/urbanairship/AirshipConfigOptions;-><init>()V

    .line 257
    .local v0, "options":Lcom/urbanairship/AirshipConfigOptions;
    invoke-virtual {v0, p0}, Lcom/urbanairship/AirshipConfigOptions;->loadFromProperties(Landroid/content/Context;)V

    .line 259
    return-object v0
.end method

.method private setPropertyValue(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "propertyValue"    # Ljava/lang/String;

    .prologue
    .line 346
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    .line 347
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_3

    .line 349
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/urbanairship/AirshipConfigOptions;->parseOptionValues(Ljava/lang/reflect/Field;Ljava/lang/String;)I

    move-result v1

    .line 350
    .local v1, "refValue":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 358
    .end local v1    # "refValue":I
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirshipConfigOptions - Unable to set field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' because the field is not visible."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 351
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_5

    .line 352
    :cond_4
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 360
    :catch_1
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirshipConfigOptions - Unable to set field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' due to invalid configuration value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 354
    const-string v2, "[, ]+"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 360
    :catch_2
    move-exception v0

    goto :goto_1

    .line 356
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionAppKey:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionAppSecret:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentAppSecret:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGCMSenderIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 529
    .local v0, "senderIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->gcmSender:Ljava/lang/String;

    invoke-static {v1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->gcmSender:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->additionalGCMSenderIds:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->additionalGCMSenderIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 537
    :cond_1
    return-object v0
.end method

.method public getLoggerLevel()I
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    goto :goto_0
.end method

.method public isTransportAllowed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 508
    iget-object v5, p0, Lcom/urbanairship/AirshipConfigOptions;->allowedTransports:[Ljava/lang/String;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v4

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/AirshipConfigOptions;->allowedTransports:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 513
    .local v0, "allowedTransport":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 514
    const/4 v4, 0x1

    goto :goto_0

    .line 512
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isValid()Z
    .locals 12

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x6

    const/4 v9, 0x3

    .line 433
    const/4 v6, 0x1

    .line 434
    .local v6, "valid":Z
    iget-boolean v7, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v7, :cond_a

    const-string v4, "production"

    .line 436
    .local v4, "modeString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_1

    .line 437
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AirshipConfigOptions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " app key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 438
    const/4 v6, 0x0

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_3

    .line 442
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AirshipConfigOptions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " app secret"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 443
    const/4 v6, 0x0

    .line 446
    :cond_3
    iget-boolean v7, p0, Lcom/urbanairship/AirshipConfigOptions;->analyticsEnabled:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/urbanairship/AirshipConfigOptions;->analyticsServer:Ljava/lang/String;

    invoke-static {v7}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 447
    const-string v7, "Invalid config - analyticsServer is empty or null."

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 448
    const/4 v6, 0x0

    .line 451
    :cond_4
    iget-object v7, p0, Lcom/urbanairship/AirshipConfigOptions;->hostURL:Ljava/lang/String;

    invoke-static {v7}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 452
    const-string v7, "Invalid config - hostURL is empty or null."

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 453
    const/4 v6, 0x0

    .line 457
    :cond_5
    if-nez v6, :cond_7

    .line 460
    const/4 v5, 0x0

    .line 461
    .local v5, "mutableField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 462
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_b

    .line 463
    move-object v5, v1

    .line 468
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_6
    if-eqz v5, :cond_7

    const-class v7, Lcom/urbanairship/PropertyName;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 469
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AirshipConfigOptions - The public field \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is missing an annotation"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 471
    const-string v7, "AirshipConfigOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg: \n\t-keepattributes *Annotation*"

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "mutableField":Ljava/lang/reflect/Field;
    :cond_7
    :goto_2
    iget-boolean v7, p0, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-eqz v7, :cond_c

    .line 481
    iget v7, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    invoke-direct {p0, v7}, Lcom/urbanairship/AirshipConfigOptions;->isLogLevelValid(I)Z

    move-result v7

    if-nez v7, :cond_8

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid log level. Falling back to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ERROR."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 483
    iput v10, p0, Lcom/urbanairship/AirshipConfigOptions;->productionLogLevel:I

    .line 492
    :cond_8
    :goto_3
    iget-wide v8, p0, Lcom/urbanairship/AirshipConfigOptions;->backgroundReportingIntervalMS:J

    const-wide/32 v10, 0xea60

    cmp-long v7, v8, v10

    if-gez v7, :cond_d

    .line 493
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AirshipConfigOptions - The backgroundReportingIntervalMS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/urbanairship/AirshipConfigOptions;->backgroundReportingIntervalMS:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " may decrease battery life."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    .line 498
    :cond_9
    :goto_4
    return v6

    .line 434
    .end local v4    # "modeString":Ljava/lang/String;
    :cond_a
    const-string v4, "development"

    goto/16 :goto_0

    .line 461
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "modeString":Ljava/lang/String;
    .restart local v5    # "mutableField":Ljava/lang/reflect/Field;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 486
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "mutableField":Ljava/lang/reflect/Field;
    :cond_c
    iget v7, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    invoke-direct {p0, v7}, Lcom/urbanairship/AirshipConfigOptions;->isLogLevelValid(I)Z

    move-result v7

    if-nez v7, :cond_8

    .line 487
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid log level. Falling back to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " DEBUG."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 488
    iput v9, p0, Lcom/urbanairship/AirshipConfigOptions;->developmentLogLevel:I

    goto :goto_3

    .line 494
    :cond_d
    iget-wide v8, p0, Lcom/urbanairship/AirshipConfigOptions;->backgroundReportingIntervalMS:J

    const-wide/32 v10, 0x5265c00

    cmp-long v7, v8, v10

    if-lez v7, :cond_9

    .line 495
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AirshipConfigOptions - The backgroundReportingIntervalMS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/urbanairship/AirshipConfigOptions;->backgroundReportingIntervalMS:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " may provide less detailed analytic reports."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    goto :goto_4

    .line 475
    .restart local v5    # "mutableField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v7

    goto/16 :goto_2
.end method

.method public loadFromProperties(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 268
    const-string v0, "airshipconfig.properties"

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/AirshipConfigOptions;->loadFromProperties(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public loadFromProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 15
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "propertiesFile"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 279
    .local v11, "resources":Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 283
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v13, ""

    invoke-virtual {v2, v13}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 284
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AirshipConfigOptions - Couldn\'t find "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v3

    .line 288
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/urbanairship/Logger;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 292
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 295
    .local v9, "properties":Ljava/util/Properties;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 296
    .local v6, "inStream":Ljava/io/InputStream;
    invoke-virtual {v9, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 300
    .local v12, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_0

    aget-object v4, v1, v5

    .line 302
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v13, Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 300
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 306
    :cond_3
    invoke-direct {p0, v4, v9}, Lcom/urbanairship/AirshipConfigOptions;->getPropertyValue(Ljava/lang/reflect/Field;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, "propertyValue":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 309
    invoke-direct {p0, v4, v10}, Lcom/urbanairship/AirshipConfigOptions;->setPropertyValue(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 313
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v8    # "len$":I
    .end local v10    # "propertyValue":Ljava/lang/String;
    .end local v12    # "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v7

    .line 314
    .local v7, "ioe":Ljava/io/IOException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AirshipConfigOptions - Unable to load properties file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method parseOptionValues(Ljava/lang/reflect/Field;Ljava/lang/String;)I
    .locals 11
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 378
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 391
    :goto_0
    return v8

    .line 379
    :catch_0
    move-exception v6

    .line 380
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    const-class v8, Lcom/urbanairship/ConstantClass;

    invoke-virtual {p1, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/ConstantClass;

    .line 382
    .local v1, "classAnnotation":Lcom/urbanairship/ConstantClass;
    if-nez v1, :cond_0

    .line 383
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The field \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' has a type mismatch or missing annotation."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 386
    :cond_0
    invoke-interface {v1}, Lcom/urbanairship/ConstantClass;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 388
    .local v2, "constantClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 389
    .local v7, "referenceField":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 391
    :try_start_1
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    goto :goto_0

    .line 392
    :catch_1
    move-exception v3

    .line 393
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The field \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is incompatible with specified class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 388
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 398
    .end local v7    # "referenceField":Ljava/lang/reflect/Field;
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to match class for field \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
