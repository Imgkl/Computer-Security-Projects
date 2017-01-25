.class public final Lcom/genie_connect/android/db/config/widgets/MyEventConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "MyEventConfig.java"


# static fields
.field private static final EMAILABLE_WIDGETS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/GenieWidget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEmailMeMyEventConfirmation:Ljava/lang/String;

.field private final mEmailMeMyEventDesc:Ljava/lang/String;

.field private final mEmailMeMyEventNoFavouritesText:Ljava/lang/String;

.field private final mEnableEmailMeMyEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/genie_connect/android/db/config/GenieWidget;

    const/4 v1, 0x0

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EXHIBITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_SPEAKERS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_FAVOURITE_SESSIONS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_DOWNLOADS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_INBOX:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_POI:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/genie_connect/android/db/config/GenieWidget;->MY_NOTES:Lcom/genie_connect/android/db/config/GenieWidget;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->EMAILABLE_WIDGETS:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 63
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_EVENT:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 64
    const-string v0, "emailMeMyEventConfirmation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->mEmailMeMyEventConfirmation:Ljava/lang/String;

    .line 65
    const-string v0, "emailMeMyEventDesc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->mEmailMeMyEventDesc:Ljava/lang/String;

    .line 66
    const-string v0, "enableEmailMeMyEvent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->mEnableEmailMeMyEvent:Z

    .line 67
    const-string v0, "emailMeMyEventNoFavouritesText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->mEmailMeMyEventNoFavouritesText:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getEmailMeMyEventConfirmation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->mEmailMeMyEventConfirmation:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailMeMyEventDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->mEmailMeMyEventDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailMeMyEventNoFavouritesText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->mEmailMeMyEventNoFavouritesText:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailMyEventWidgets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/WidgetLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/db/config/WidgetLink;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->getWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 86
    .local v1, "widgetLink":Lcom/genie_connect/android/db/config/WidgetLink;
    sget-object v3, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->EMAILABLE_WIDGETS:Ljava/util/List;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    .end local v1    # "widgetLink":Lcom/genie_connect/android/db/config/WidgetLink;
    :cond_1
    return-object v2
.end method

.method public isEmailMeMyEventEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/MyEventConfig;->mEnableEmailMeMyEvent:Z

    return v0
.end method
