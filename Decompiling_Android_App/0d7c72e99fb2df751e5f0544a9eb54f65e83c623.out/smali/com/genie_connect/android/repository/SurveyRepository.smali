.class public Lcom/genie_connect/android/repository/SurveyRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "SurveyRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Survey;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

.field private final mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

.field private mReplacerUrlSafe:Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacerUrlSafe;

.field private final repo:Lcom/genie_connect/android/repository/VisitorSurveysRepository;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/security/VisitorLoginManager;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p4, "loginManager"    # Lcom/genie_connect/android/security/VisitorLoginManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Survey;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/security/VisitorLoginManager;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Survey;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 41
    iput-object p3, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    .line 42
    iput-object p4, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    .line 43
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v1, Lcom/genie_connect/android/repository/VisitorSurveysRepository;

    invoke-virtual {v0, v1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/VisitorSurveysRepository;

    iput-object v0, p0, Lcom/genie_connect/android/repository/SurveyRepository;->repo:Lcom/genie_connect/android/repository/VisitorSurveysRepository;

    .line 45
    new-instance v0, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacerUrlSafe;

    invoke-direct {v0, p2}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacerUrlSafe;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mReplacerUrlSafe:Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacerUrlSafe;

    .line 46
    return-void
.end method

.method private getSurveyByIdReplacingUrlTokens(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Survey;
    .locals 3
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/SurveyRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/model/Survey;

    .line 123
    .local v0, "survey":Lcom/genie_connect/common/db/model/Survey;
    iget-object v1, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mReplacerUrlSafe:Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacerUrlSafe;

    iget-object v2, v0, Lcom/genie_connect/common/db/model/Survey;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacerUrlSafe;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/genie_connect/common/db/model/Survey;->url:Ljava/lang/String;

    .line 124
    return-object v0
.end method


# virtual methods
.method public getAllSubmittedSurveys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/Survey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "surveys":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/Survey;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SurveyRepository;->getAllIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 91
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/genie_connect/android/repository/SurveyRepository;->hasPermissionToView(J)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/genie_connect/android/repository/SurveyRepository;->repo:Lcom/genie_connect/android/repository/VisitorSurveysRepository;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/repository/VisitorSurveysRepository;->isSubmitted(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-direct {p0, v1}, Lcom/genie_connect/android/repository/SurveyRepository;->getSurveyByIdReplacingUrlTokens(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Survey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    return-object v2
.end method

.method public getAllUnsubmittedSurveys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/Survey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "surveys":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/Survey;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SurveyRepository;->getAllIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 51
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/genie_connect/android/repository/SurveyRepository;->hasPermissionToView(J)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/genie_connect/android/repository/SurveyRepository;->repo:Lcom/genie_connect/android/repository/VisitorSurveysRepository;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/repository/VisitorSurveysRepository;->isSubmitted(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    invoke-direct {p0, v1}, Lcom/genie_connect/android/repository/SurveyRepository;->getSurveyByIdReplacingUrlTokens(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Survey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    return-object v2
.end method

.method public getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    .locals 4
    .param p1, "surveyId"    # Ljava/lang/Long;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SurveyRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/common/db/model/Survey$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/common/db/model/Survey$Properties;->PermissionGroup:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->uniqueFieldAsLong(Lde/greenrobot/dao/Property;)Ljava/lang/Long;

    move-result-object v0

    .line 102
    .local v0, "id":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v1

    goto :goto_0
.end method

.method public getPermissionGroupFailureMessage(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .param p1, "surveyId"    # Ljava/lang/Long;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/SurveyRepository;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    .line 107
    .local v0, "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    if-nez v0, :cond_0

    const-string v1, "Can`t open this survey."

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubmissionDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/genie_connect/android/repository/SurveyRepository;->repo:Lcom/genie_connect/android/repository/VisitorSurveysRepository;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/repository/VisitorSurveysRepository;->getSubmissionDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidUnsubmittedSurveys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/Survey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "surveys":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/Survey;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/SurveyRepository;->getAllIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 61
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/genie_connect/android/repository/SurveyRepository;->hasPermissionToOpen(J)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/genie_connect/android/repository/SurveyRepository;->repo:Lcom/genie_connect/android/repository/VisitorSurveysRepository;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/repository/VisitorSurveysRepository;->isSubmitted(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    invoke-direct {p0, v1}, Lcom/genie_connect/android/repository/SurveyRepository;->getSurveyByIdReplacingUrlTokens(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Survey;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    return-object v2
.end method

.method public hasPermissionToOpen(J)Z
    .locals 5
    .param p1, "surveyId"    # J

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/genie_connect/android/repository/SurveyRepository;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    .line 80
    .local v0, "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    if-eqz v0, :cond_0

    .line 81
    iget-object v2, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    iget-object v3, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v2, v3, v4, v0}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    iget-object v3, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v3}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->OPEN:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v2, v3, v4, v0}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPermissionToView(J)Z
    .locals 5
    .param p1, "surveyId"    # J

    .prologue
    .line 70
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/repository/SurveyRepository;->getPermissionGroup(Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    .line 71
    .local v0, "permissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    iget-object v2, p0, Lcom/genie_connect/android/repository/SurveyRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->VIEW:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v1, v2, v3, v0}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v1

    .line 74
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
