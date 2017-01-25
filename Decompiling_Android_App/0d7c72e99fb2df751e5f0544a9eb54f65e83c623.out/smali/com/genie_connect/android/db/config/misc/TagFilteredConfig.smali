.class public abstract Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;
.super Lcom/genie_connect/android/db/config/BaseConfig;
.source "TagFilteredConfig.java"


# static fields
.field protected static final FILTER_TYPE_A_TO_Z:Ljava/lang/String; = "aToZ"

.field protected static final FILTER_TYPE_COUNTRY:Ljava/lang/String; = "country"

.field protected static final FILTER_TYPE_FEATURED:Ljava/lang/String; = "featured"

.field protected static final FILTER_TYPE_SEQ_NO:Ljava/lang/String; = "seqNo"

.field protected static final FILTER_TYPE_TAG1:Ljava/lang/String; = "tagFilter1"

.field protected static final FILTER_TYPE_TAG2:Ljava/lang/String; = "tagFilter2"

.field protected static final FILTER_TYPE_TAG3:Ljava/lang/String; = "tagFilter3"

.field protected static final FILTER_TYPE_TAG4:Ljava/lang/String; = "tagFilter4"


# instance fields
.field private final mTagFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/misc/TagFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "type"    # Lcom/genie_connect/android/db/config/GenieWidget;
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/config/BaseConfig;-><init>(Lcom/genie_connect/android/db/config/GenieWidget;Lorg/json/JSONObject;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;->mTagFilterList:Ljava/util/List;

    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;->mTagFilterList:Ljava/util/List;

    new-instance v1, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string/jumbo v2, "tagFilter1"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;->mTagFilterList:Ljava/util/List;

    new-instance v1, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string/jumbo v2, "tagFilter2"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;->mTagFilterList:Ljava/util/List;

    new-instance v1, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string/jumbo v2, "tagFilter3"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;->mTagFilterList:Ljava/util/List;

    new-instance v1, Lcom/genie_connect/android/db/config/misc/TagFilter;

    const-string/jumbo v2, "tagFilter4"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/genie_connect/android/db/config/misc/TagFilter;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public getTagFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/misc/TagFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/genie_connect/android/db/config/misc/TagFilteredConfig;->mTagFilterList:Ljava/util/List;

    return-object v0
.end method
