.class public Lcom/genie_connect/android/db/config/widgets/ProductConfig;
.super Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
.source "ProductConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;
    }
.end annotation


# instance fields
.field private final mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

.field private final mCustomField1:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

.field private final mCustomField2:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

.field private final mCustomField3:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

.field private final mCustomField4:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

.field private final mCustomField5:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

.field private final mEnableSharing:Z

.field private final mExternalFeedbackURL:Ljava/lang/String;

.field private final mShowActivityStream:Z

.field private final mUseExternalFeedback:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->PRODUCTS:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 54
    if-eqz p1, :cond_0

    const-string v0, "aToZ"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    iput-object v2, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 56
    iput-object v2, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField1:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 57
    iput-object v2, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField2:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 58
    iput-object v2, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField3:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 59
    iput-object v2, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField4:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 60
    iput-object v2, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField5:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 61
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mEnableSharing:Z

    .line 62
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mUseExternalFeedback:Z

    .line 63
    iput-object v2, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mExternalFeedbackURL:Ljava/lang/String;

    .line 64
    iput-boolean v3, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mShowActivityStream:Z

    .line 87
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string v1, "aToZ"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    .line 69
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    const-string v1, "customField1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField1:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 70
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    const-string v1, "customField2"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField2:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 71
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    const-string v1, "customField3"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField3:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 72
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    const-string v1, "customField4"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField4:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 73
    new-instance v0, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    const-string v1, "customField5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField5:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    .line 75
    const-string v0, "enableSharing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mEnableSharing:Z

    .line 77
    const-string/jumbo v0, "useExternalFeedback"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mUseExternalFeedback:Z

    .line 79
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mUseExternalFeedback:Z

    if-eqz v0, :cond_2

    .line 80
    const-string v0, "externalFeedbackURL"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mExternalFeedbackURL:Ljava/lang/String;

    .line 85
    :goto_1
    const-string v0, "showActivityStream"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mShowActivityStream:Z

    goto :goto_0

    .line 82
    :cond_2
    iput-object v2, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mExternalFeedbackURL:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public enableSharing()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mEnableSharing:Z

    return v0
.end method

.method public getAtoz()Lcom/genie_connect/android/db/config/misc/TagFilter;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mAtoZ:Lcom/genie_connect/android/db/config/misc/TagFilter;

    return-object v0
.end method

.method public getCustomField1()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField1:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    return-object v0
.end method

.method public getCustomField2()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField2:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    return-object v0
.end method

.method public getCustomField3()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField3:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    return-object v0
.end method

.method public getCustomField4()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField4:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    return-object v0
.end method

.method public getCustomField5()Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mCustomField5:Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;

    return-object v0
.end method

.method public getExternalFeedbackURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mExternalFeedbackURL:Ljava/lang/String;

    return-object v0
.end method

.method public showActivityStream()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mShowActivityStream:Z

    return v0
.end method

.method public useExternalFeedback()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->mUseExternalFeedback:Z

    return v0
.end method
