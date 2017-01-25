.class Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;
.super Ljava/io/ObjectOutputStream$PutField;
.source "OptimizedObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PutFieldImpl"
.end annotation


# instance fields
.field private final curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

.field private final objs:[Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    .prologue
    .line 795
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$PutField;-><init>()V

    .line 796
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->out:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    .line 798
    # getter for: Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;
    invoke-static {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->access$200(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    .line 800
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/ignite/lang/IgniteBiTuple;

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->objs:[Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 801
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;
    .param p2, "x1"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$1;

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;-><init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;)[Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;

    .prologue
    .line 782
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->objs:[Lorg/apache/ignite/lang/IgniteBiTuple;

    return-object v0
.end method

.method private value(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 861
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v2, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 863
    .local v0, "i":I
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->get(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    move-result-object v1

    .line 865
    .local v1, "info":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->objs:[Lorg/apache/ignite/lang/IgniteBiTuple;

    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->type()Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v3

    aput-object v3, v2, v0

    .line 866
    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # B

    .prologue
    .line 810
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 811
    return-void
.end method

.method public put(Ljava/lang/String;C)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # C

    .prologue
    .line 815
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 816
    return-void
.end method

.method public put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # D

    .prologue
    .line 840
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 835
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 836
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 825
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 826
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # J

    .prologue
    .line 830
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 831
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 845
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 846
    return-void
.end method

.method public put(Ljava/lang/String;S)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # S

    .prologue
    .line 820
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 821
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 805
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    return-void
.end method

.method public write(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->out:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    if-eq p1, v0, :cond_0

    .line 851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong stream."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream$PutFieldImpl;->out:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;

    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectOutputStream;->writeFields()V

    .line 854
    return-void
.end method
