.class public final Lcom/genie_connect/android/db/config/WidgetLink;
.super Ljava/lang/Object;
.source "WidgetLink.java"


# static fields
.field private static final ICON:Ljava/lang/String; = "icon"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final INFO_PAGE:Ljava/lang/String; = "infoPage"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final NONE:J = -0x1L

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private final mIcon:Ljava/lang/String;

.field private final mInfoPage:J

.field private final mJson:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mType:Lcom/genie_connect/android/db/config/GenieWidget;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mJson:Ljava/lang/String;

    .line 51
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mName:Ljava/lang/String;

    .line 52
    const-string v1, "icon"

    invoke-static {p1, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mIcon:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/genie_connect/android/db/config/WidgetLink;->getWidgetType(Lorg/json/JSONObject;)Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mType:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 55
    const-string v1, "infoPage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    .local v0, "info":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mInfoPage:J

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mInfoPage:J

    goto :goto_0
.end method

.method private static getWidgetType(Lorg/json/JSONObject;)Lcom/genie_connect/android/db/config/GenieWidget;
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 85
    const-string/jumbo v1, "type"

    invoke-static {p0, v1}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/db/config/GenieWidget;->fromString(Ljava/lang/String;)Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoPage()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mInfoPage:J

    return-wide v0
.end method

.method public getJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mJson:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/genie_connect/android/db/config/GenieWidget;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mType:Lcom/genie_connect/android/db/config/GenieWidget;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetLink [mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInfoPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mInfoPage:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/WidgetLink;->mType:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
