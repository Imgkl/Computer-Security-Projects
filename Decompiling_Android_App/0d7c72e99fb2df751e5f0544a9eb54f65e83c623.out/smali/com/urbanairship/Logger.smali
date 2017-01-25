.class public Lcom/urbanairship/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x6

    sput v0, Lcom/urbanairship/Logger;->logLevel:I

    .line 50
    const-string v0, "UALib"

    sput-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 108
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 109
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 121
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 154
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 155
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 177
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 178
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 166
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 131
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 132
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 143
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 144
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :cond_0
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 97
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 98
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 63
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 64
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 76
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    sget v0, Lcom/urbanairship/Logger;->logLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 87
    sget-object v0, Lcom/urbanairship/Logger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_0
    return-void
.end method
