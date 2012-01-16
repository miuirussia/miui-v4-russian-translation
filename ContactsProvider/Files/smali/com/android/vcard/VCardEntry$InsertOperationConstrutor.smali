.class Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# instance fields
.field private final wd:Ljava/util/List;

.field private final we:I


# virtual methods
.method public F()V
    .locals 0

    .prologue
    .line 1717
    return-void
.end method

.method public G()V
    .locals 0

    .prologue
    .line 1721
    return-void
.end method

.method public H()V
    .locals 0

    .prologue
    .line 1729
    return-void
.end method

.method public a(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 1725
    return-void
.end method

.method public a(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .parameter

    .prologue
    .line 1733
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->wd:Ljava/util/List;

    iget v1, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->we:I

    invoke-interface {p1, v0, v1}, Lcom/android/vcard/VCardEntry$EntryElement;->a(Ljava/util/List;I)V

    .line 1736
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
