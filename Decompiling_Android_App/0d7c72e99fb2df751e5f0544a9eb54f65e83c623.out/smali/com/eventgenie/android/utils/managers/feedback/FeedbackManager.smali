.class public Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIRECTORY:Ljava/lang/String; = "__default/"

.field private static final DEFAULT_PAGENAME:Ljava/lang/String; = "index.html"

.field private static final EXTERNAL_FEEDBACK_PRODUCT_PARAM_ID:Ljava/lang/String; = "product_id"

.field private static final EXTERNAL_FEEDBACK_PRODUCT_PARAM_TITLE:Ljava/lang/String; = "product_name"

.field private static final EXTERNAL_FEEDBACK_SESSION_PARAM_ID:Ljava/lang/String; = "session_id"

.field private static final EXTERNAL_FEEDBACK_SESSION_PARAM_TITLE:Ljava/lang/String; = "session_title"

.field private static final FEEDBACK_DIRECTORY:Ljava/lang/String; = "feedback/"

.field private static final THANKYOU_DIRECTORY:Ljava/lang/String; = "feedback_confirmation/"


# instance fields
.field private final mConfig:Lcom/genie_connect/android/db/config/AppConfig;

.field private final mContext:Landroid/content/Context;

.field private mEntityFeedbackOverrideUrl:Ljava/lang/String;

.field private final mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mItemId:J

.field private final mItemName:Ljava/lang/String;

.field private final mOtherFilter:Ljava/lang/String;

.field private mSurveyAlreadySent:Z

.field private final mSurveyRepository:Lcom/genie_connect/android/repository/SurveyRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p3, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "itemId"    # J
    .param p6, "itemName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 91
    iput-wide p4, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemId:J

    .line 92
    iput-object p6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemName:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    invoke-virtual {p3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p4, p5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEntityRow(Ljava/lang/String;J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 95
    .local v1, "c":Luk/co/alt236/easycursor/EasyCursor;
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p3, v5, :cond_3

    .line 96
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 97
    const-string/jumbo v5, "track"

    invoke-interface {v1, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mOtherFilter:Ljava/lang/String;

    .line 106
    :goto_0
    const-string v5, "feedbackUrl"

    invoke-interface {v1, v5}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v5

    const-class v6, Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v5, v6}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/genie_connect/android/repository/SurveyRepository;

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mSurveyRepository:Lcom/genie_connect/android/repository/SurveyRepository;

    .line 110
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/EventGenieApplication;->isAppEntityFeatureEnabled(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    .line 111
    .local v0, "appEntityFeatureEnabled":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ MANAGER_FB: isAppEntityFeatureEnabled? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 112
    if-eqz v0, :cond_6

    .line 114
    invoke-direct {p0, v1}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->getEntitySpecificSurvey(Luk/co/alt236/easycursor/EasyCursor;)Lcom/genie_connect/common/db/model/Survey;

    move-result-object v4

    .line 115
    .local v4, "survey":Lcom/genie_connect/common/db/model/Survey;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mSurveyRepository:Lcom/genie_connect/android/repository/SurveyRepository;

    iget-object v6, v4, Lcom/genie_connect/common/db/model/Survey;->id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/repository/SurveyRepository;->hasPermissionToOpen(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 116
    :cond_0
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 117
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p3, v5, :cond_5

    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->getProductSetupSurvey()Lcom/genie_connect/common/db/model/Survey;

    move-result-object v4

    .line 121
    :cond_1
    :goto_1
    if-eqz v4, :cond_6

    .line 122
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mSurveyRepository:Lcom/genie_connect/android/repository/SurveyRepository;

    iget-object v6, v4, Lcom/genie_connect/common/db/model/Survey;->id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/repository/SurveyRepository;->hasPermissionToOpen(J)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 123
    iget-object v5, v4, Lcom/genie_connect/common/db/model/Survey;->url:Ljava/lang/String;

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    .line 124
    iget-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mSurveyRepository:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v5}, Lcom/genie_connect/android/repository/SurveyRepository;->getAllSubmittedSurveys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/model/Survey;

    .line 125
    .local v3, "s":Lcom/genie_connect/common/db/model/Survey;
    invoke-virtual {v3}, Lcom/genie_connect/common/db/model/Survey;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4}, Lcom/genie_connect/common/db/model/Survey;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mSurveyAlreadySent:Z

    goto :goto_2

    .line 98
    .end local v0    # "appEntityFeatureEnabled":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "s":Lcom/genie_connect/common/db/model/Survey;
    .end local v4    # "survey":Lcom/genie_connect/common/db/model/Survey;
    :cond_3
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne p3, v5, :cond_4

    .line 99
    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v5, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 100
    iput-object v7, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mOtherFilter:Ljava/lang/String;

    goto/16 :goto_0

    .line 102
    :cond_4
    iput-object p3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 103
    iput-object v7, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mOtherFilter:Ljava/lang/String;

    goto/16 :goto_0

    .line 117
    .restart local v0    # "appEntityFeatureEnabled":Z
    .restart local v4    # "survey":Lcom/genie_connect/common/db/model/Survey;
    :cond_5
    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->getScheduleSetupSurvey()Lcom/genie_connect/common/db/model/Survey;

    move-result-object v4

    goto :goto_1

    .line 133
    .end local v4    # "survey":Lcom/genie_connect/common/db/model/Survey;
    :cond_6
    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 135
    return-void
.end method

.method private constructExternalProductFeedbackIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 5
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x26

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "product_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "product_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemName:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->getInAppBrowserIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    return-object v1

    .line 162
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private constructExternalSessionFeedbackIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 5
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x26

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session_title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemName:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->getInAppBrowserIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    return-object v1

    .line 178
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private doFeedbackForProducts()V
    .locals 8

    .prologue
    .line 190
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v0

    .line 192
    .local v0, "cfg":Lcom/genie_connect/android/db/config/widgets/ProductConfig;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ MANAGER_FB: Using URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getExternalFeedbackURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    .line 201
    .local v2, "url":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v2}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->constructExternalProductFeedbackIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 203
    .local v1, "naviIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "disable_share"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    :cond_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    const-string v4, "products"

    iget-wide v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemId:J

    invoke-static {v3, v4, v6, v7}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyFeedbackSent(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 208
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 212
    :goto_1
    return-void

    .line 198
    .end local v1    # "naviIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getExternalFeedbackURL()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_0

    .line 210
    .restart local v1    # "naviIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    goto :goto_1
.end method

.method private doFeedbackForSessions()V
    .locals 10

    .prologue
    .line 215
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v1

    .line 219
    .local v1, "cfg":Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 220
    const-string v6, "^ MANAGER_FB: Using feedback URL Override!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 222
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 223
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->constructExternalSessionFeedbackIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v4

    .line 225
    .local v4, "naviIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 226
    invoke-virtual {v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "disable_share"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    const-string v7, "sessions"

    iget-wide v8, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemId:J

    invoke-static {v6, v7, v8, v9}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyFeedbackSent(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 229
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 271
    .end local v4    # "naviIntent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->useExternalFeedback()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 234
    const-string v6, "^ MANAGER_FB: Using external feedback!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 236
    const-string v6, "feedback/"

    invoke-direct {p0, v6}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->getOfflinePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "formPath":Ljava/lang/String;
    const-string v6, "feedback_confirmation/"

    invoke-direct {p0, v6}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->getOfflinePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "thankYouPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ MANAGER_FB: Opening offline form with path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 241
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 243
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    const-class v7, Lcom/eventgenie/android/activities/sessions/SessionFeedbackOfflineActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "item_title"

    iget-object v7, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v6, "entity_id"

    iget-wide v8, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemId:J

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 247
    const-string v6, "form_path"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v6, "thankyou_path"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 251
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 252
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getExternalFeedbackURL()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ MANAGER_FB: Using URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getExternalFeedbackURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 255
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 256
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    const-string v7, "sessions"

    iget-wide v8, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemId:J

    invoke-static {v6, v7, v8, v9}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyFeedbackSent(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 257
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getExternalFeedbackURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->constructExternalSessionFeedbackIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto/16 :goto_0

    .line 259
    :cond_5
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 263
    .end local v2    # "formPath":Ljava/lang/String;
    .end local v5    # "thankYouPath":Ljava/lang/String;
    :cond_6
    const-string v6, "^ MANAGER_FB: Using internal feedback!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 264
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    const-class v7, Lcom/eventgenie/android/activities/sessions/SessionFeedbackActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v6, "session_title"

    iget-object v7, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v6, "entity_id"

    iget-wide v8, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemId:J

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 268
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private getEntitySpecificSurvey(Luk/co/alt236/easycursor/EasyCursor;)Lcom/genie_connect/common/db/model/Survey;
    .locals 4
    .param p1, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 148
    const-string v2, "survey"

    invoke-interface {p1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 149
    .local v0, "surveyId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mSurveyRepository:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/repository/SurveyRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/model/Survey;

    .line 152
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getInAppBrowserIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getInAppBrowserIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    return-object v0
.end method

.method private getOfflinePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 280
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;

    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 282
    .local v1, "updater":Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->validatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    if-nez v0, :cond_1

    .line 285
    invoke-virtual {v1}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->copyAndExtractAssetsFile()Z

    .line 286
    invoke-virtual {v1}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->validatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    if-nez v0, :cond_0

    .line 288
    const/4 v2, 0x0

    .line 293
    :goto_0
    return-object v2

    .line 290
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->getPreferedPath(Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 293
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->getPreferedPath(Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getPreferedPath(Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "updater"    # Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/genie_connect/android/net/updaters/FeedbackFormUpdater;->getLocalBaseDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "baseDirectory":Ljava/lang/String;
    sget-object v2, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v3}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 317
    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    .line 306
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/session_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mItemId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->validatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 309
    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mOtherFilter:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mOtherFilter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/track_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mOtherFilter:Ljava/lang/String;

    const-string v4, " "

    const-string v5, "+"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->validatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    if-nez v1, :cond_0

    .line 314
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "__default/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->validatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    goto/16 :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getProductSetupSurvey()Lcom/genie_connect/common/db/model/Survey;
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getProductFeatures()Lcom/genie_connect/android/db/config/features/ProductFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/ProductFeatures;->getSurveyId()Ljava/lang/Long;

    move-result-object v0

    .line 144
    .local v0, "surveyId":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mSurveyRepository:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/repository/SurveyRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/model/Survey;

    goto :goto_0
.end method

.method private getScheduleSetupSurvey()Lcom/genie_connect/common/db/model/Survey;
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getScheduleFeatures()Lcom/genie_connect/android/db/config/features/ScheduleFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/ScheduleFeatures;->getSurveyId()Ljava/lang/Long;

    move-result-object v0

    .line 139
    .local v0, "surveyId":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mSurveyRepository:Lcom/genie_connect/android/repository/SurveyRepository;

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/repository/SurveyRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/model/Survey;

    goto :goto_0
.end method

.method private static validatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 375
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 378
    .local v1, "res":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ MANAGER_FB: Exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 383
    .end local p0    # "path":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 382
    .restart local p0    # "path":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ MANAGER_FB: Exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 383
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isFeedbackAvailable()Z
    .locals 5

    .prologue
    .line 324
    sget-object v3, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v4, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 349
    const/4 v1, 0x0

    .line 352
    .local v1, "res":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ MANAGER_FB: isFeedbackAvailable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 353
    return v1

    .line 327
    .end local v1    # "res":Z
    :pswitch_0
    new-instance v2, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;

    invoke-direct {v2}, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;-><init>()V

    .line 329
    .local v2, "sessionAvailability":Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->setOverrideFeedbackUrl(Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->useExternalFeedback()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->setUseExternalFeedback(Z)V

    .line 331
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getFeedbackEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->setFeedbackEmail(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getExternalFeedbackURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->setFeedbackFileUrl(Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getFeedbackZipFileMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->setOfflineFeedback(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v2}, Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;->isAvailable()Z

    move-result v1

    .line 337
    .restart local v1    # "res":Z
    goto :goto_0

    .line 340
    .end local v1    # "res":Z
    .end local v2    # "sessionAvailability":Lcom/eventgenie/android/utils/managers/feedback/SessionFeedbackAvailabilityCalc;
    :pswitch_1
    new-instance v0, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;-><init>()V

    .line 342
    .local v0, "productAvailability":Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->setOverrideFeedbackUrl(Ljava/lang/String;)V

    .line 343
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->useExternalFeedback()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->setUseExternalFeedback(Z)V

    .line 344
    iget-object v3, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getProducts()Lcom/genie_connect/android/db/config/widgets/ProductConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/ProductConfig;->getExternalFeedbackURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->setExternalFeedbackUrl(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/feedback/ProductFeedbackAvailabilityCalc;->isAvailable()Z

    move-result v1

    .line 347
    .restart local v1    # "res":Z
    goto/16 :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isOverrideSurvey()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mEntityFeedbackOverrideUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showFeedback()V
    .locals 6

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mSurveyAlreadySent:Z

    if-eqz v0, :cond_1

    .line 358
    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mContext:Landroid/content/Context;

    const-string v2, "Feedback for this %s has already been submitted - thank you"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    if-ne v0, v5, :cond_0

    const-string v0, "product"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v0, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 372
    :goto_1
    return-void

    .line 358
    :cond_0
    const-string v0, "session"

    goto :goto_0

    .line 361
    :cond_1
    sget-object v0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->mFeedbackEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 364
    :pswitch_0
    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->doFeedbackForSessions()V

    goto :goto_1

    .line 367
    :pswitch_1
    invoke-direct {p0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->doFeedbackForProducts()V

    goto :goto_1

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
