.class public Lcom/genie_connect/android/db/loaders/InfoPageLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "InfoPageLoader.java"


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mInfopageId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "id"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 54
    iput-wide p3, p0, Lcom/genie_connect/android/db/loaders/InfoPageLoader;->mInfopageId:J

    .line 55
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/InfoPageLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 56
    return-void
.end method


# virtual methods
.method protected bridge synthetic buildCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/genie_connect/android/db/loaders/InfoPageLoader;->buildCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method protected buildCursor()Luk/co/alt236/easycursor/EasyCursor;
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/genie_connect/android/db/loaders/InfoPageLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v0

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/InfoPageLoader;->mInfopageId:J

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/DbInfopages;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
