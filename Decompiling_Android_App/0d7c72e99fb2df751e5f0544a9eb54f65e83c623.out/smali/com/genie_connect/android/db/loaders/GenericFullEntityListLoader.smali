.class public Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "GenericFullEntityListLoader.java"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 51
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 53
    if-nez p4, :cond_0

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;->mBundle:Landroid/os/Bundle;

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-object p4, p0, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;->mBundle:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic buildCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;->buildCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method protected buildCursor()Luk/co/alt236/easycursor/EasyCursor;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v2, p0, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getEntityList(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
