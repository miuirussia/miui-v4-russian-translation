.class Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# instance fields
.field bB:I

.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    .line 193
    iput p2, p0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->bB:I

    .line 194
    return-void
.end method
