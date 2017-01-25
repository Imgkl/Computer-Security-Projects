.class public final Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;
.super Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
.source "MultiEventSelectorConfig.java"


# static fields
.field private static final ALL:Ljava/lang/String; = "all"

.field private static final CONFIRM_MESSAGE:Ljava/lang/String; = "confirmMessage"

.field private static final UNAVAILABLE_MESSAGE:Ljava/lang/String; = "unavailableMessage"

.field private static final UPCOMING:Ljava/lang/String; = "upcoming"


# instance fields
.field private final mAll:Lcom/genie_connect/android/db/config/misc/CategoryFilter;

.field private final mConfirmMessage:Ljava/lang/String;

.field private final mUnavailableMessage:Ljava/lang/String;

.field private final mUpcoming:Lcom/genie_connect/android/db/config/misc/CategoryFilter;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MULTIEVENTSELECTOR:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 53
    new-instance v0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;

    const-string v1, "all"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/CategoryFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->mAll:Lcom/genie_connect/android/db/config/misc/CategoryFilter;

    .line 54
    new-instance v0, Lcom/genie_connect/android/db/config/misc/CategoryFilter;

    const-string/jumbo v1, "upcoming"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/db/config/misc/CategoryFilter;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->mUpcoming:Lcom/genie_connect/android/db/config/misc/CategoryFilter;

    .line 55
    const-string/jumbo v0, "unavailableMessage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->mUnavailableMessage:Ljava/lang/String;

    .line 56
    const-string v0, "confirmMessage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->mConfirmMessage:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getAll()Lcom/genie_connect/android/db/config/misc/CategoryFilter;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->mAll:Lcom/genie_connect/android/db/config/misc/CategoryFilter;

    return-object v0
.end method

.method public getConfirmMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->mConfirmMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUnavailableMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->mUnavailableMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUpcoming()Lcom/genie_connect/android/db/config/misc/CategoryFilter;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/genie_connect/android/db/config/widgets/MultiEventSelectorConfig;->mUpcoming:Lcom/genie_connect/android/db/config/misc/CategoryFilter;

    return-object v0
.end method
