.class Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# instance fields
.field displayName:Ljava/lang/String;

.field pS:J

.field pT:I

.field pU:Z

.field pV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 241
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pS:J

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 246
    iput v2, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pT:I

    .line 247
    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pU:Z

    .line 248
    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pV:Z

    .line 249
    return-void
.end method
