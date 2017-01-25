.class public Lcom/genie_connect/android/repository/VisitorSurveysRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "VisitorSurveysRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Visitorsurvey;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUBMISSION_STATUS_COMPLETED:J = 0xaL


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
            "Lcom/genie_connect/common/db/model/Visitorsurvey;",
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
    .line 26
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Visitorsurvey;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITORSURVEYS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getSubmissionDate(J)Ljava/lang/String;
    .locals 3
    .param p1, "surveyId"    # J

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/VisitorSurveysRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/Visitorsurvey$Properties;->Survey:Lde/greenrobot/dao/Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/Visitorsurvey$Properties;->SubmissionDate:Lde/greenrobot/dao/Property;

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->uniqueFieldAsString(Lde/greenrobot/dao/Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSubmitted(J)Z
    .locals 9
    .param p1, "surveyId"    # J

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/VisitorSurveysRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/model/Visitorsurvey$Properties;->Survey:Lde/greenrobot/dao/Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    const/4 v3, 0x0

    sget-object v4, Lcom/genie_connect/common/db/model/Visitorsurvey$Properties;->SubmissionStatus:Lde/greenrobot/dao/Property;

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v0

    return v0
.end method
