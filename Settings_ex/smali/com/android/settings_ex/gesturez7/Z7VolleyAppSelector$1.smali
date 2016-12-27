.class final Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$1;
.super Ljava/lang/Object;
.source "Z7VolleyAppSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;)I
    .locals 3
    .param p1, "a"    # Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;
    .param p2, "b"    # Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$1;->collator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 291
    check-cast p1, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;

    check-cast p2, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$1;->compare(Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;Lcom/android/settings_ex/gesturez7/Z7VolleyAppSelector$MyApplicationInfo;)I

    move-result v0

    return v0
.end method
