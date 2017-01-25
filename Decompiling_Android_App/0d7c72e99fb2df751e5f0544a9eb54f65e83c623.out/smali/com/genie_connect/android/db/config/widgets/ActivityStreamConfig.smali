.class public Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "ActivityStreamConfig.java"


# static fields
.field private static final HIDE_ENTITY_POSTS:Ljava/lang/String; = "hidePostEntries"


# instance fields
.field private final mHideEntityRelatedPosts:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 15
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-direct {p0, v0, p1}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 17
    const-string v0, "hidePostEntries"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;->optBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;->mHideEntityRelatedPosts:Z

    .line 18
    return-void
.end method


# virtual methods
.method public hideEntityRelatedPosts()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;->mHideEntityRelatedPosts:Z

    return v0
.end method
