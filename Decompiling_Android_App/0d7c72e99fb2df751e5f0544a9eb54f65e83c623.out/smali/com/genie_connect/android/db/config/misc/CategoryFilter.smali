.class public final Lcom/genie_connect/android/db/config/misc/CategoryFilter;
.super Ljava/lang/Object;
.source "CategoryFilter.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/ConfigCommonStrings;


# instance fields
.field private final mCategory:Ljava/lang/String;

.field private final mIcon:Ljava/lang/String;

.field private final mIsEnabled:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mName:Ljava/lang/String;

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mIcon:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mCategory:Ljava/lang/String;

    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mIsEnabled:Z

    .line 65
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mName:Ljava/lang/String;

    .line 53
    const-string v1, "icon"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mIcon:Ljava/lang/String;

    .line 55
    const-string v1, "category"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    .local v0, "cat":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 57
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mCategory:Ljava/lang/String;

    .line 62
    :goto_1
    const-string v1, "isEnabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mIsEnabled:Z

    goto :goto_0

    .line 59
    :cond_1
    iput-object v2, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mCategory:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;->mIsEnabled:Z

    return v0
.end method
