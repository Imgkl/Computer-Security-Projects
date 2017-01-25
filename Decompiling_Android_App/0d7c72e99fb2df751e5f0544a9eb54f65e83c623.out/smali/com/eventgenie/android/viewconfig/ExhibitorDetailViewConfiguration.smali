.class public Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;
.super Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;
.source "ExhibitorDetailViewConfiguration.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

.field private mRepo:Lcom/genie_connect/android/repository/ExhibitorRepository;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/model/Exhibitor;Lcom/genie_connect/android/repository/ExhibitorRepository;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "exhibitor"    # Lcom/genie_connect/common/db/model/Exhibitor;
    .param p2, "repo"    # Lcom/genie_connect/android/repository/ExhibitorRepository;
    .param p3, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p3}, Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;-><init>(Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 70
    iput-object p1, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    .line 71
    iput-object p4, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/ExhibitorRepository;

    .line 73
    return-void
.end method


# virtual methods
.method public getTabs()Ljava/util/List;
    .locals 8
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
    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v2, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;>;"
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/ExhibitorRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/repository/ExhibitorRepository;->exhibitorHasLocations(Ljava/lang/Long;)Z

    move-result v1

    .line 83
    .local v1, "hasLocations":Z
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    iget-object v3, v3, Lcom/genie_connect/common/db/model/Exhibitor;->fullDescription:Ljava/lang/String;

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->hasContactDetails(Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->hasAddressDetails(Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    :cond_0
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->exhibitor_info:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Info:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, v4, v5, v6}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/ExhibitorRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/repository/ExhibitorRepository;->hasRelatedSessions(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, v4, v5, v6}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/ExhibitorRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/repository/ExhibitorRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->PRODUCTS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, v4, v5, v6}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3
    iget-object v3, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/ExhibitorRepository;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mExhibitor:Lcom/genie_connect/common/db/model/Exhibitor;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Exhibitor;->id:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/repository/ExhibitorRepository;->hasRelatedDownloadables(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    new-instance v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->VerticalContainer:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v0, v3, v4, v5}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    .line 107
    .local v0, "downloadsTab":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V

    .line 111
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->PRODUCTS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v7, 0x65

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V

    .line 115
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v0    # "downloadsTab":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;->showActivityStream()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 119
    new-instance v3, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/ExhibitorDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v5, Lcom/eventgenie/android/R$string;->activity_stream_tab_title:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->ActivityStream:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, v4, v5, v6}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_5
    return-object v2
.end method
