.class Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;
.super Ljava/lang/Object;
.source "ContactAggregator.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final synthetic jA:Lcom/android/providers/contacts/ContactAggregator;

.field final jy:I

.field final jz:I


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/ContactAggregator;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2006
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->jA:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2007
    iput p2, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->jy:I

    .line 2008
    iput p3, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->jz:I

    .line 2009
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactAggregator;IILcom/android/providers/contacts/ContactAggregator$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1999
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/ContactAggregator;II)V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;)I
    .locals 2
    .parameter

    .prologue
    .line 2013
    if-nez p1, :cond_0

    .line 2014
    const/4 v0, -0x1

    .line 2019
    :goto_0
    return v0

    .line 2016
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->jy:I

    iget v1, p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->jy:I

    if-ne v0, v1, :cond_1

    .line 2017
    iget v0, p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->jz:I

    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->jz:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 2019
    :cond_1
    iget v0, p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->jy:I

    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->jy:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1999
    check-cast p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->a(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;)I

    move-result v0

    return v0
.end method
