.class public Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;
.super Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;
.source "ProductDetailViewConfiguration.java"


# static fields
.field public static final LOADER_EXHIBITOR_PRODUCT_DOWNLOADABLES:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHideExhibitors:Z

.field private mProduct:Lcom/genie_connect/common/db/model/Product;

.field private mRepo:Lcom/genie_connect/android/repository/ProductRepository;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/model/Product;Lcom/genie_connect/android/repository/ProductRepository;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "product"    # Lcom/genie_connect/common/db/model/Product;
    .param p2, "repo"    # Lcom/genie_connect/android/repository/ProductRepository;
    .param p3, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p3}, Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;-><init>(Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 69
    iput-object p1, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mProduct:Lcom/genie_connect/common/db/model/Product;

    .line 70
    iput-object p4, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/ProductRepository;

    .line 72
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
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;>;"
    new-instance v1, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v3, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Info:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v1, v2, v3, v4}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-boolean v1, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mHideExhibitors:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/ProductRepository;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mProduct:Lcom/genie_connect/common/db/model/Product;

    iget-object v2, v2, Lcom/genie_connect/common/db/model/Product;->id:Ljava/lang/Long;

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/repository/ProductRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v1, v2, v3, v4}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/ProductRepository;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mProduct:Lcom/genie_connect/common/db/model/Product;

    iget-object v2, v2, Lcom/genie_connect/common/db/model/Product;->id:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/repository/ProductRepository;->hasRelatedDownloadables(Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v1, v2, v3, v4}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->showActivityStream()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    new-instance v1, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v2, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v3, Lcom/eventgenie/android/R$string;->activity_stream_tab_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->ActivityStream:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v1, v2, v3, v4}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    return-object v0
.end method

.method public setHideExhibitors(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/eventgenie/android/viewconfig/ProductDetailViewConfiguration;->mHideExhibitors:Z

    .line 76
    return-void
.end method
