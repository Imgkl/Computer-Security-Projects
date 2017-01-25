.class public Lcom/genie_connect/android/db/loaders/gamification/GameLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "GameLoader.java"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/gamification/GameLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 53
    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/gamification/GameLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getGames()Lcom/genie_connect/android/db/access/DbGames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbGames;->getAll()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
