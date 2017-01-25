.class Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
.super Ljava/lang/Object;
.source "OptimizedClassDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FieldInfo"
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final fieldName:Ljava/lang/String;

.field private final fieldOffs:J

.field private final fieldType:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/String;JLorg/apache/ignite/marshaller/optimized/OptimizedFieldType;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p5, "type"    # Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .prologue
    .line 825
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 827
    iput-wide p3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->fieldOffs:J

    .line 828
    iput-object p5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->fieldType:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    .line 829
    iput-object p2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->fieldName:Ljava/lang/String;

    .line 830
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;)Ljava/lang/reflect/Field;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    .prologue
    .line 806
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method


# virtual methods
.method field()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method offset()J
    .locals 2

    .prologue
    .line 843
    iget-wide v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->fieldOffs:J

    return-wide v0
.end method

.method type()Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->fieldType:Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    return-object v0
.end method
