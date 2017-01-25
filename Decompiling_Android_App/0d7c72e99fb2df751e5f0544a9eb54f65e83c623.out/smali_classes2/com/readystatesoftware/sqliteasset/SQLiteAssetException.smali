.class public Lcom/readystatesoftware/sqliteasset/SQLiteAssetException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteAssetException.java"


# static fields
.field private static final serialVersionUID:J = -0x3f52fb0dcb01103aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method
