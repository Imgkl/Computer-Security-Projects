.class Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;
.super Ljava/io/ObjectInputStream$GetField;
.source "OptimizedObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetFieldImpl"
.end annotation


# instance fields
.field private final fieldInfo:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

.field private final objs:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)V
    .locals 6
    .param p1, "in"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1035
    invoke-direct {p0}, Ljava/io/ObjectInputStream$GetField;-><init>()V

    .line 1036
    # getter for: Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;
    invoke-static {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->access$200(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->fieldInfo:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    .line 1038
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->fieldInfo:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->objs:[Ljava/lang/Object;

    .line 1040
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->fieldInfo:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1041
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->fieldInfo:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->get(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    move-result-object v2

    .line 1043
    .local v2, "t":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    const/4 v1, 0x0

    .line 1045
    .local v1, "obj":Ljava/lang/Object;
    sget-object v3, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$1;->$SwitchMap$org$apache$ignite$marshaller$optimized$OptimizedFieldType:[I

    invoke-virtual {v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->type()Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1090
    .end local v1    # "obj":Ljava/lang/Object;
    :goto_1
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->objs:[Ljava/lang/Object;

    aput-object v1, v3, v0

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    .restart local v1    # "obj":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 1049
    .local v1, "obj":Ljava/lang/Byte;
    goto :goto_1

    .line 1052
    .local v1, "obj":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 1054
    .local v1, "obj":Ljava/lang/Short;
    goto :goto_1

    .line 1057
    .local v1, "obj":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1059
    .local v1, "obj":Ljava/lang/Integer;
    goto :goto_1

    .line 1062
    .local v1, "obj":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1064
    .local v1, "obj":Ljava/lang/Long;
    goto :goto_1

    .line 1067
    .local v1, "obj":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1069
    .local v1, "obj":Ljava/lang/Float;
    goto :goto_1

    .line 1072
    .local v1, "obj":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1074
    .local v1, "obj":Ljava/lang/Double;
    goto :goto_1

    .line 1077
    .local v1, "obj":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readChar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 1079
    .local v1, "obj":Ljava/lang/Character;
    goto :goto_1

    .line 1082
    .local v1, "obj":Ljava/lang/Object;
    :pswitch_7
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1084
    .local v1, "obj":Ljava/lang/Boolean;
    goto :goto_1

    .line 1087
    .local v1, "obj":Ljava/lang/Object;
    :pswitch_8
    invoke-virtual {p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1092
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "t":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    :cond_0
    return-void

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
    .param p2, "x1"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1022
    invoke-direct {p0, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;-><init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)V

    return-void
.end method

.method private value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 1156
    .local p2, "dflt":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->objs:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->fieldInfo:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->getIndex(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->objs:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->fieldInfo:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->getIndex(Ljava/lang/String;)I

    move-result v1

    aget-object p2, v0, v1

    .end local p2    # "dflt":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p2
.end method


# virtual methods
.method public defaulted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1101
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->objs:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->fieldInfo:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->getIndex(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;B)B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;C)C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/String;F)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;S)S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;->value(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getObjectStreamClass()Ljava/io/ObjectStreamClass;
    .locals 1

    .prologue
    .line 1096
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
