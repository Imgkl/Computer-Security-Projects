.class public final Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "NewsSocialConfig.java"


# static fields
.field private static final TAB_LIMIT:I = 0x5

.field private static final TAB_LIMIT_FEATURED:I = 0x4


# instance fields
.field private final mShowFeatured:Z


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 44
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->NEWSSOCIAL:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 46
    const-string v0, "showFeatured"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->mShowFeatured:Z

    .line 48
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->mShowFeatured:Z

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->setTabLimit(I)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->setTabLimit(I)V

    goto :goto_0
.end method


# virtual methods
.method public showFeatured()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/NewsSocialConfig;->mShowFeatured:Z

    return v0
.end method
