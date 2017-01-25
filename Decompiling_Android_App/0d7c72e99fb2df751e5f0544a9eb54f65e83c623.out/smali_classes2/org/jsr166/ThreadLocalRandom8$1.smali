.class final Lorg/jsr166/ThreadLocalRandom8$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalRandom8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ThreadLocalRandom8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/jsr166/ThreadLocalRandom8;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/jsr166/ThreadLocalRandom8$1;->initialValue()Lorg/jsr166/ThreadLocalRandom8;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/jsr166/ThreadLocalRandom8;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lorg/jsr166/ThreadLocalRandom8;

    invoke-direct {v0}, Lorg/jsr166/ThreadLocalRandom8;-><init>()V

    return-object v0
.end method
