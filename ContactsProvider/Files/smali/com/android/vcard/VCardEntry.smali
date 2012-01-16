.class public Lcom/android/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# static fields
.field private static final cz:Ljava/util/Map;

.field private static final wz:Ljava/util/List;


# instance fields
.field private final P:I

.field private final mAccount:Landroid/accounts/Account;

.field private final wl:Lcom/android/vcard/VCardEntry$NameData;

.field private wm:Ljava/util/List;

.field private wn:Ljava/util/List;

.field private wo:Ljava/util/List;

.field private wp:Ljava/util/List;

.field private wq:Ljava/util/List;

.field private wr:Ljava/util/List;

.field private ws:Ljava/util/List;

.field private wt:Ljava/util/List;

.field private wu:Ljava/util/List;

.field private wv:Ljava/util/List;

.field private ww:Ljava/util/List;

.field private wx:Lcom/android/vcard/VCardEntry$BirthdayData;

.field private wy:Lcom/android/vcard/VCardEntry$AnniversaryData;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardEntry;->cz:Ljava/util/Map;

    .line 75
    sget-object v0, Lcom/android/vcard/VCardEntry;->cz:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/vcard/VCardEntry;->cz:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/vcard/VCardEntry;->cz:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/vcard/VCardEntry;->cz:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/vcard/VCardEntry;->cz:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/vcard/VCardEntry;->cz:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/vcard/VCardEntry;->cz:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/vcard/VCardEntry;->cz:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardEntry;->wz:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1753
    const/high16 v0, -0x4000

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardEntry;-><init>(I)V

    .line 1754
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 1757
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 1758
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1760
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    new-instance v0, Lcom/android/vcard/VCardEntry$NameData;

    invoke-direct {v0}, Lcom/android/vcard/VCardEntry$NameData;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry;->wl:Lcom/android/vcard/VCardEntry$NameData;

    .line 1761
    iput p1, p0, Lcom/android/vcard/VCardEntry;->P:I

    .line 1762
    iput-object p2, p0, Lcom/android/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 1763
    return-void
.end method

.method private a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1617
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1618
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryElement;

    invoke-interface {v0}, Lcom/android/vcard/VCardEntry$EntryElement;->C()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->a(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1619
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EntryElement;

    .line 1620
    invoke-interface {p2, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->a(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    goto :goto_0

    .line 1622
    :cond_0
    invoke-interface {p2}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->H()V

    .line 1624
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V
    .locals 1
    .parameter

    .prologue
    .line 1585
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->F()V

    .line 1586
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wl:Lcom/android/vcard/VCardEntry$NameData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->C()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->a(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1587
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wl:Lcom/android/vcard/VCardEntry$NameData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->a(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1588
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->H()V

    .line 1590
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wm:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1591
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wn:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1592
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wo:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1593
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wp:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1594
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wq:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1595
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wr:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1596
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->ws:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1597
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wt:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1598
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wu:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1599
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wv:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1600
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->ww:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardEntry;->a(Ljava/util/List;Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1602
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wx:Lcom/android/vcard/VCardEntry$BirthdayData;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wx:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$BirthdayData;->C()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->a(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1604
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wx:Lcom/android/vcard/VCardEntry$BirthdayData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->a(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1605
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->H()V

    .line 1607
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wy:Lcom/android/vcard/VCardEntry$AnniversaryData;

    if-eqz v0, :cond_1

    .line 1608
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wy:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$AnniversaryData;->C()Lcom/android/vcard/VCardEntry$EntryLabel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->a(Lcom/android/vcard/VCardEntry$EntryLabel;)V

    .line 1609
    iget-object v0, p0, Lcom/android/vcard/VCardEntry;->wy:Lcom/android/vcard/VCardEntry$AnniversaryData;

    invoke-interface {p1, v0}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->a(Lcom/android/vcard/VCardEntry$EntryElement;)Z

    .line 1610
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->H()V

    .line 1612
    :cond_1
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElementIterator;->G()V

    .line 1613
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1747
    new-instance v0, Lcom/android/vcard/VCardEntry$ToStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$1;)V

    .line 1748
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardEntry;->a(Lcom/android/vcard/VCardEntry$EntryElementIterator;)V

    .line 1749
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$ToStringIterator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
