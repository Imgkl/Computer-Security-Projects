.class public final Lcom/genie_connect/android/db/config/widgets/GamificationConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "GamificationConfig.java"


# static fields
.field private static final PRIMARY_INFO_PAGE:Ljava/lang/String; = "primaryInfoPage"

.field private static final SECONDARY_INFO_PAGES:Ljava/lang/String; = "secondaryInfoPages"


# instance fields
.field private final mPrimaryInfoPage:J

.field private final mSecondaryInfoPages:[J


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 47
    const-string v0, "primaryInfoPage"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/widgets/InfoPageHelper;->getIdOfChildEntity(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->mPrimaryInfoPage:J

    .line 49
    if-nez p1, :cond_0

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->mSecondaryInfoPages:[J

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v0, "secondaryInfoPages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/config/widgets/InfoPageHelper;->getArrayOfInfoPageIds(Lorg/json/JSONArray;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->mSecondaryInfoPages:[J

    goto :goto_0
.end method


# virtual methods
.method public getPrimaryInfoPage()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->mPrimaryInfoPage:J

    return-wide v0
.end method

.method public getSecondaryInfoPages()[J
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->mSecondaryInfoPages:[J

    return-object v0
.end method
