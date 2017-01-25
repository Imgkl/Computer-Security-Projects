.class public Lcom/genie_connect/android/repository/VisitorRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "VisitorRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Visitor;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Visitor;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Visitor;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 24
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getVisitorGroupForVisitor(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .param p1, "visitorId"    # Ljava/lang/Long;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/VisitorRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/model/Visitor;

    .line 30
    .local v0, "v":Lcom/genie_connect/common/db/model/Visitor;
    if-eqz v0, :cond_0

    .line 31
    iget-object v1, v0, Lcom/genie_connect/common/db/model/Visitor;->visitorGroup:Ljava/lang/String;

    .line 34
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
