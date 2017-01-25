.class final Lorg/jsr166/Striped64_8$ThreadHashCode;
.super Ljava/lang/ThreadLocal;
.source "Striped64_8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/Striped64_8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadHashCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/jsr166/Striped64_8$HashCode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/jsr166/Striped64_8$ThreadHashCode;->initialValue()Lorg/jsr166/Striped64_8$HashCode;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Lorg/jsr166/Striped64_8$HashCode;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lorg/jsr166/Striped64_8$HashCode;

    invoke-direct {v0}, Lorg/jsr166/Striped64_8$HashCode;-><init>()V

    return-object v0
.end method
