.class public Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;
.super Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;
.source "SpeakerDetailViewConfiguration.java"


# static fields
.field public static final LOADER_EXHIBITOR_PRODUCT_DOWNLOADABLES:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRepo:Lcom/genie_connect/android/repository/SpeakerRepository;

.field private mSessionRepo:Lcom/genie_connect/android/repository/SessionRepository;

.field private mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

.field private mSubsessionRepo:Lcom/genie_connect/android/repository/SubsessionRepository;


# direct methods
.method public constructor <init>(Lcom/genie_connect/common/db/model/Speaker;Lcom/genie_connect/android/repository/SpeakerRepository;Lcom/genie_connect/android/repository/SessionRepository;Lcom/genie_connect/android/repository/SubsessionRepository;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V
    .locals 0
    .param p1, "speaker"    # Lcom/genie_connect/common/db/model/Speaker;
    .param p2, "repo"    # Lcom/genie_connect/android/repository/SpeakerRepository;
    .param p3, "sessionRepo"    # Lcom/genie_connect/android/repository/SessionRepository;
    .param p4, "subsessionRepo"    # Lcom/genie_connect/android/repository/SubsessionRepository;
    .param p5, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0, p5}, Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;-><init>(Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 77
    iput-object p1, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    .line 78
    iput-object p6, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SpeakerRepository;

    .line 80
    iput-object p3, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSessionRepo:Lcom/genie_connect/android/repository/SessionRepository;

    .line 81
    iput-object p4, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSubsessionRepo:Lcom/genie_connect/android/repository/SubsessionRepository;

    .line 82
    return-void
.end method


# virtual methods
.method public getTabs()Ljava/util/List;
    .locals 9
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
    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v3, "tabs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;>;"
    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Speaker;->jobTitle:Ljava/lang/String;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Speaker;->fullDescription:Ljava/lang/String;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    invoke-static {v4}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->hasContactDetails(Lcom/genie_connect/common/db/model/interfaces/EntityWithContact;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    invoke-static {v4}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->hasAddressDetails(Lcom/genie_connect/common/db/model/interfaces/EntityWithAddress;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    :cond_0
    new-instance v4, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v5, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v6, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->Info:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSessionRepo:Lcom/genie_connect/android/repository/SessionRepository;

    iget-object v5, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    iget-object v5, v5, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/genie_connect/android/repository/SessionRepository;->speakerHasSessions(J)Z

    move-result v1

    .line 97
    .local v1, "speakerAtSessions":Z
    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSubsessionRepo:Lcom/genie_connect/android/repository/SubsessionRepository;

    iget-object v5, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    iget-object v5, v5, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/genie_connect/android/repository/SubsessionRepository;->speakerHasSubsessions(J)Z

    move-result v2

    .line 99
    .local v2, "speakerAtSubsessions":Z
    if-nez v1, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->showRelatedSessions()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    new-instance v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->VerticalContainer:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v0, v4, v5, v6}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    .line 104
    .local v0, "sessionsElement":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    if-eqz v1, :cond_3

    .line 105
    new-instance v4, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v8, 0x66

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V

    .line 110
    :cond_3
    if-eqz v2, :cond_4

    .line 111
    new-instance v4, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SUBSESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/16 v8, 0x67

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V

    .line 117
    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v0    # "sessionsElement":Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
    :cond_5
    iget-object v4, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mRepo:Lcom/genie_connect/android/repository/SpeakerRepository;

    iget-object v5, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mSpeaker:Lcom/genie_connect/common/db/model/Speaker;

    iget-object v5, v5, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/repository/SpeakerRepository;->hasRelatedDownloadables(Ljava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->showRelatedDownloadables()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 121
    new-instance v4, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->EntityList:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_6
    invoke-virtual {p0}, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getSpeakers()Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/SpeakerConfig;->showActivityStream()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 127
    new-instance v4, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    iget-object v5, p0, Lcom/eventgenie/android/viewconfig/SpeakerDetailViewConfiguration;->mContext:Landroid/content/Context;

    sget v6, Lcom/eventgenie/android/R$string;->activity_stream_tab_title:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;->ActivityStream:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v4, v5, v6, v7}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_7
    return-object v3
.end method
