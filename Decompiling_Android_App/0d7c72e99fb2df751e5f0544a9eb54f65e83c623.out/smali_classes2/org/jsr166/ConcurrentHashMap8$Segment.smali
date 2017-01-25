.class Lorg/jsr166/ConcurrentHashMap8$Segment;
.super Ljava/lang/Object;
.source "ConcurrentHashMap8.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentHashMap8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field final loadFactor:F


# direct methods
.method constructor <init>(F)V
    .locals 0
    .param p1, "lf"    # F

    .prologue
    .line 3268
    .local p0, "this":Lorg/jsr166/ConcurrentHashMap8$Segment;, "Lorg/jsr166/ConcurrentHashMap8$Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jsr166/ConcurrentHashMap8$Segment;->loadFactor:F

    return-void
.end method
