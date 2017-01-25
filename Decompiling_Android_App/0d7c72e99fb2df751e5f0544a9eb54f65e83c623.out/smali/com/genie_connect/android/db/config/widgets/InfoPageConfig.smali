.class public final Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;
.super Ljava/lang/Object;
.source "InfoPageConfig.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/ConfigCommonStrings;


# static fields
.field private static final NATIVE_APP_SCHEMA_URI:Ljava/lang/String; = "nativeAppSchemaUri"

.field public static final NONE:J = -0x1L

.field private static final NO_CHILDREN:Ljava/lang/String; = "noChildren"

.field private static final OPEN_NATIVE_APP_SCHEMA:Ljava/lang/String; = "openNativeAppSchema"

.field private static final PARENT2:Ljava/lang/String; = "parent"


# instance fields
.field private final mCanOpenNatively:Z

.field private final mChildren:[J

.field private final mIcon:Ljava/lang/String;

.field private final mId:J

.field private final mIsSecure:Z

.field private final mName:Ljava/lang/String;

.field private final mNativeAppSchemaUri:Ljava/lang/String;

.field private final mNoChildren:I

.field private final mParent:J

.field private final mType:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mId:J

    .line 60
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mName:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "type"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mType:Ljava/lang/String;

    .line 62
    const-string v1, "icon"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mIcon:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mUrl:Ljava/lang/String;

    .line 64
    const-string v1, "noChildren"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mNoChildren:I

    .line 65
    const-string v1, "openNativeAppSchema"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mCanOpenNatively:Z

    .line 66
    const-string v1, "nativeAppSchemaUri"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mNativeAppSchemaUri:Ljava/lang/String;

    .line 68
    const-string v1, "isSecure"

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mIsSecure:Z

    .line 69
    const-string v1, "children"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/db/config/widgets/InfoPageHelper;->getArrayOfInfoPageIds(Lorg/json/JSONArray;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mChildren:[J

    .line 71
    const-string v1, "parent"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    .local v0, "parent":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 74
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mParent:J

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mParent:J

    goto :goto_0
.end method


# virtual methods
.method public getChildren()[J
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mChildren:[J

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAppSchemaUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mNativeAppSchemaUri:Ljava/lang/String;

    return-object v0
.end method

.method public getNoChildren()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mNoChildren:I

    return v0
.end method

.method public getParent()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mParent:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCanOpenNatively()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mCanOpenNatively:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/InfoPageConfig;->mIsSecure:Z

    return v0
.end method
