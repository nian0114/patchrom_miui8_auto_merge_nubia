.class public Lcom/android/settings_ex/LinkifyUtils;
.super Ljava/lang/Object;
.source "LinkifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/LinkifyUtils$OnClickListener;
    }
.end annotation


# direct methods
.method public static linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings_ex/LinkifyUtils$OnClickListener;)Z
    .locals 7
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/StringBuilder;
    .param p2, "listener"    # Lcom/android/settings_ex/LinkifyUtils$OnClickListener;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 52
    const-string v5, "LINK_BEGIN"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "beginIndex":I
    if-ne v0, v6, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    return v4

    .line 57
    :cond_0
    const-string v5, "LINK_BEGIN"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v0, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 58
    const-string v5, "LINK_END"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, "endIndex":I
    if-ne v1, v6, :cond_1

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    :cond_1
    const-string v4, "LINK_END"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 66
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 68
    .local v2, "spannableContent":Landroid/text/Spannable;
    new-instance v3, Lcom/android/settings_ex/LinkifyUtils$1;

    invoke-direct {v3, p2}, Lcom/android/settings_ex/LinkifyUtils$1;-><init>(Lcom/android/settings_ex/LinkifyUtils$OnClickListener;)V

    .line 80
    .local v3, "spannableLink":Landroid/text/style/ClickableSpan;
    const/16 v4, 0x21

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 82
    const/4 v4, 0x1

    goto :goto_0
.end method
