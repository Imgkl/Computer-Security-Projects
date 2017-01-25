.class Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;
.super Ljava/util/HashMap;
.source "GridLeanMap.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridLeanMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeanHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;",
        "Lorg/apache/ignite/internal/util/GridLeanMap$LeanMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(IF)V
    .locals 0
    .param p1, "initCap"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 1251
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;, "Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 1252
    return-void
.end method

.method synthetic constructor <init>(IFLorg/apache/ignite/internal/util/GridLeanMap$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # F
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/GridLeanMap$1;

    .prologue
    .line 1242
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;, "Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;-><init>(IF)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1258
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;, "Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1259
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lorg/apache/ignite/internal/util/GridLeanMap$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/GridLeanMap$1;

    .prologue
    .line 1242
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;, "Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public isFull()Z
    .locals 1

    .prologue
    .line 1263
    .local p0, "this":Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap;, "Lorg/apache/ignite/internal/util/GridLeanMap$LeanHashMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method
