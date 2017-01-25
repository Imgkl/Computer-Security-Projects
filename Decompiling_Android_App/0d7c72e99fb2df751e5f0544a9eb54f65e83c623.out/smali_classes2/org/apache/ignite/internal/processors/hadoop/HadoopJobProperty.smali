.class public final enum Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;
.super Ljava/lang/Enum;
.source "HadoopJobProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

.field public static final enum COMBINER_HASHMAP_SIZE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

.field public static final enum EXTERNAL_CONCURRENT_MAPPERS:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

.field public static final enum EXTERNAL_CONCURRENT_REDUCERS:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

.field public static final enum JOB_STATUS_POLL_DELAY:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

.field public static final enum PARTITION_HASHMAP_SIZE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

.field public static final enum SHUFFLE_COMBINER_NO_SORTING:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

.field public static final enum SHUFFLE_OFFHEAP_PAGE_SIZE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

.field public static final enum SHUFFLE_REDUCER_NO_SORTING:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;


# instance fields
.field private final ptyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    const-string v1, "COMBINER_HASHMAP_SIZE"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->COMBINER_HASHMAP_SIZE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    .line 38
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    const-string v1, "PARTITION_HASHMAP_SIZE"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->PARTITION_HASHMAP_SIZE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    .line 45
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    const-string v1, "EXTERNAL_CONCURRENT_MAPPERS"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->EXTERNAL_CONCURRENT_MAPPERS:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    .line 52
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    const-string v1, "EXTERNAL_CONCURRENT_REDUCERS"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->EXTERNAL_CONCURRENT_REDUCERS:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    .line 57
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    const-string v1, "JOB_STATUS_POLL_DELAY"

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->JOB_STATUS_POLL_DELAY:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    .line 64
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    const-string v1, "SHUFFLE_OFFHEAP_PAGE_SIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->SHUFFLE_OFFHEAP_PAGE_SIZE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    .line 74
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    const-string v1, "SHUFFLE_COMBINER_NO_SORTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->SHUFFLE_COMBINER_NO_SORTING:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    .line 84
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    const-string v1, "SHUFFLE_REDUCER_NO_SORTING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->SHUFFLE_REDUCER_NO_SORTING:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->COMBINER_HASHMAP_SIZE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->PARTITION_HASHMAP_SIZE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->EXTERNAL_CONCURRENT_MAPPERS:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->EXTERNAL_CONCURRENT_REDUCERS:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->JOB_STATUS_POLL_DELAY:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->SHUFFLE_OFFHEAP_PAGE_SIZE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->SHUFFLE_COMBINER_NO_SORTING:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->SHUFFLE_REDUCER_NO_SORTING:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->$VALUES:[Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignite."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->ptyName:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static get(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;I)I
    .locals 2
    .param p0, "jobInfo"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;
    .param p1, "pty"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;
    .param p2, "dflt"    # I

    .prologue
    .line 122
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->propertyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "res":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "dflt":I
    :goto_0
    return p2

    .restart local p2    # "dflt":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method public static get(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "jobInfo"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;
    .param p1, "pty"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;
    .param p2, "dflt"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->propertyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "res":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "dflt":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "dflt":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static get(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;Z)Z
    .locals 2
    .param p0, "jobInfo"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;
    .param p1, "pty"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;
    .param p2, "dflt"    # Z

    .prologue
    .line 134
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->propertyName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobInfo;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "res":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "dflt":Z
    :goto_0
    return p2

    .restart local p2    # "dflt":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->$VALUES:[Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;

    return-object v0
.end method


# virtual methods
.method public propertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobProperty;->ptyName:Ljava/lang/String;

    return-object v0
.end method
