.class public interface abstract Lcom/a_vcard/android/text/Editable;
.super Ljava/lang/Object;
.source "Editable.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Lcom/a_vcard/android/text/GetChars;
.implements Ljava/lang/Appendable;


# virtual methods
.method public abstract append(C)Lcom/a_vcard/android/text/Editable;
.end method

.method public abstract append(Ljava/lang/CharSequence;)Lcom/a_vcard/android/text/Editable;
.end method

.method public abstract append(Ljava/lang/CharSequence;II)Lcom/a_vcard/android/text/Editable;
.end method

.method public abstract clear()V
.end method

.method public abstract clearSpans()V
.end method

.method public abstract delete(II)Lcom/a_vcard/android/text/Editable;
.end method

.method public abstract getFilters()[Lcom/a_vcard/android/text/InputFilter;
.end method

.method public abstract insert(ILjava/lang/CharSequence;)Lcom/a_vcard/android/text/Editable;
.end method

.method public abstract insert(ILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/Editable;
.end method

.method public abstract replace(IILjava/lang/CharSequence;)Lcom/a_vcard/android/text/Editable;
.end method

.method public abstract replace(IILjava/lang/CharSequence;II)Lcom/a_vcard/android/text/Editable;
.end method

.method public abstract setFilters([Lcom/a_vcard/android/text/InputFilter;)V
.end method
