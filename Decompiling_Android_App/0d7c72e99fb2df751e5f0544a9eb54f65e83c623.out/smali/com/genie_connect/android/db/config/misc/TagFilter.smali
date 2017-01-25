.class public final Lcom/genie_connect/android/db/config/misc/TagFilter;
.super Ljava/lang/Object;
.source "TagFilter.java"

# interfaces
.implements Lcom/genie_connect/android/db/config/ConfigCommonStrings;


# static fields
.field private static final TAG:Ljava/lang/String; = "tag"


# instance fields
.field private final mIcon:Ljava/lang/String;

.field private final mIsEnabled:Z

.field private final mName:Ljava/lang/String;

.field private final mTag:J


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mName:Ljava/lang/String;

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mIcon:Ljava/lang/String;

    .line 49
    iput-wide v2, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mTag:J

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mIsEnabled:Z

    .line 65
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mName:Ljava/lang/String;

    .line 54
    const-string v1, "icon"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mIcon:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "tag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    .local v0, "cat":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 58
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mTag:J

    .line 62
    :goto_1
    const-string v1, "isEnabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mIsEnabled:Z

    goto :goto_0

    .line 60
    :cond_1
    iput-wide v2, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mTag:J

    goto :goto_1
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTag()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mTag:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilter;->mIsEnabled:Z

    return v0
.end method
