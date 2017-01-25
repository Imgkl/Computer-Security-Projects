.class public final Lcom/genie_connect/android/db/config/features/ProductFeatures;
.super Lcom/genie_connect/android/db/config/features/BaseFeatures;
.source "ProductFeatures.java"


# instance fields
.field private final surveyId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    const-string v1, "features_products"

    invoke-direct {p0, v1, p1}, Lcom/genie_connect/android/db/config/features/BaseFeatures;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 41
    const-string v1, "survey"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    .local v0, "surveyObject":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/genie_connect/android/db/config/features/ProductFeatures;->surveyId:Ljava/lang/Long;

    .line 43
    return-void

    .line 42
    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getPlaceholderAssetId()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    return v0
.end method

.method public getSurveyId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/genie_connect/android/db/config/features/ProductFeatures;->surveyId:Ljava/lang/Long;

    return-object v0
.end method
