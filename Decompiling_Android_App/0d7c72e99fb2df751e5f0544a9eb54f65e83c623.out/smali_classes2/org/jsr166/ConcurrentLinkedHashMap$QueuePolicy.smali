.class public final enum Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
.super Ljava/lang/Enum;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsr166/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueuePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

.field public static final enum PER_SEGMENT_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

.field public static final enum PER_SEGMENT_Q_OPTIMIZED_RMV:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

.field public static final enum SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2134
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    const-string v1, "SINGLE_Q"

    invoke-direct {v0, v1, v2}, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    .line 2142
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    const-string v1, "PER_SEGMENT_Q"

    invoke-direct {v0, v1, v3}, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    .line 2148
    new-instance v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    const-string v1, "PER_SEGMENT_Q_OPTIMIZED_RMV"

    invoke-direct {v0, v1, v4}, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q_OPTIMIZED_RMV:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    .line 2129
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    sget-object v1, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->SINGLE_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->PER_SEGMENT_Q_OPTIMIZED_RMV:Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->$VALUES:[Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2129
    const-class v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    return-object v0
.end method

.method public static values()[Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;
    .locals 1

    .prologue
    .line 2129
    sget-object v0, Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->$VALUES:[Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    invoke-virtual {v0}, [Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsr166/ConcurrentLinkedHashMap$QueuePolicy;

    return-object v0
.end method
