.class public Lcom/genie_connect/android/db/loaders/NotesLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "NotesLoader.java"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mEntities:[Ljava/lang/String;

.field private final mSearchFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "entities"    # [Ljava/lang/String;
    .param p4, "searchFilter"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/NotesLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 55
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/NotesLoader;->mEntities:[Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/genie_connect/android/db/loaders/NotesLoader;->mSearchFilter:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/NotesLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getNotes()Lcom/genie_connect/android/db/access/DbNotes;

    move-result-object v0

    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/NotesLoader;->mEntities:[Ljava/lang/String;

    iget-object v4, p0, Lcom/genie_connect/android/db/loaders/NotesLoader;->mSearchFilter:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/genie_connect/android/db/access/DbNotes;->getNotes(J[Ljava/lang/String;Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
