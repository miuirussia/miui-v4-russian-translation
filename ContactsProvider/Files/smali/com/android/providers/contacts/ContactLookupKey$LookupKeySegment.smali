.class public Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;
.super Ljava/lang/Object;
.source "ContactLookupKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public key:Ljava/lang/String;

.field public vS:I

.field public vT:I

.field public vU:Ljava/lang/String;

.field public vf:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;)I
    .locals 4
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J

    iget-wide v2, p1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    const/4 v0, -0x1

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_0
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J

    iget-wide v2, p1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->vf:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    check-cast p1, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;

    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;->a(Lcom/android/providers/contacts/ContactLookupKey$LookupKeySegment;)I

    move-result v0

    return v0
.end method
