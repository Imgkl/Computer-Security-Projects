.class public interface abstract Luk/co/alt236/easycursor/EasyQueryModel;
.super Ljava/lang/Object;
.source "EasyQueryModel.java"


# virtual methods
.method public abstract getModelComment()Ljava/lang/String;
.end method

.method public abstract getModelTag()Ljava/lang/String;
.end method

.method public abstract getModelVersion()I
.end method

.method public abstract setModelComment(Ljava/lang/String;)V
.end method

.method public abstract setModelTag(Ljava/lang/String;)V
.end method

.method public abstract setModelVersion(I)V
.end method

.method public abstract toJson()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
