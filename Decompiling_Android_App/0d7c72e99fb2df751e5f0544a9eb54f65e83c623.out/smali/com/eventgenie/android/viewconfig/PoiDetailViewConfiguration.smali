.class public Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;
.super Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;
.source "PoiDetailViewConfiguration.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPoi:Lcom/genie_connect/common/db/model/Poi;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/model/Poi;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "poi"    # Lcom/genie_connect/common/db/model/Poi;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p2}, Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;-><init>(Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 63
    iput-object p1, p0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    .line 64
    iput-object p3, p0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public getTabs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;>;"
    iget-object v1, p0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    iget-object v1, v1, Lcom/genie_connect/common/db/model/Poi;->fullDescription:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->hasAddressDetails(Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->hasContactDetails(Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    new-instance v1, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v3, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Info:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v1, v2, v3, v4}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->mPoi:Lcom/genie_connect/common/db/model/Poi;

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->buildAddressStringForDecoding(Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    new-instance v1, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v3, Lcom/eventgenie/android/R$string;->location:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Map:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v1, v2, v3, v4}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getPoi()Lcom/genie_connect/android/db/config/widgets/PoiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/PoiConfig;->showActivityStream()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    new-instance v1, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/PoiDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v3, Lcom/eventgenie/android/R$string;->activity_stream_tab_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->ActivityStream:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v1, v2, v3, v4}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    return-object v0
.end method
