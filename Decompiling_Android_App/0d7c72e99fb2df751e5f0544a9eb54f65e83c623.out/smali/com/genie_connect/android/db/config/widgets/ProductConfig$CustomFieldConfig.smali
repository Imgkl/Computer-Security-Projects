.class public Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;
.super Ljava/lang/Object;
.source "ProductConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/widgets/ProductConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFieldConfig"
.end annotation


# instance fields
.field private isEnabled:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/genie_connect/android/db/config/BaseConfig;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;->name:Ljava/lang/String;

    .line 132
    const-string v0, "isEnabled"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;->isEnabled:Z

    .line 133
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ProductConfig$CustomFieldConfig;->isEnabled:Z

    return v0
.end method
