.class public Lcom/genie_connect/android/db/config/widgets/SurveysConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "SurveysConfig.java"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 10
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SURVEYS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 11
    return-void
.end method
