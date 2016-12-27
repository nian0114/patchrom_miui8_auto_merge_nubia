.class public Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;
.super Ljava/lang/Object;
.source "QSTileGridViewAdatper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Viewholder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private layout:Landroid/widget/LinearLayout;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;Landroid/view/View;)V
    .locals 1
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const v0, 0x7f12031d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->imageView:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f12031e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->textView:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f12031c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->layout:Landroid/widget/LinearLayout;

    .line 66
    return-void
.end method


# virtual methods
.method public update(Ljava/util/HashMap;I)V
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v2, 0xa

    .line 69
    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    const/16 v0, 0xd

    if-eq p2, v0, :cond_0

    const/16 v0, 0xe

    if-eq p2, v0, :cond_0

    const/16 v0, 0xf

    if-ne p2, v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x32

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020311

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->mDataSourceList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->access$000(Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "item_image"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->this$0:Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;

    # getter for: Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->mDataSourceList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;->access$000(Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "item_text"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 80
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x14

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/notificationcenter/ui/QSTileGridViewAdatper$Viewholder;->imageView:Landroid/widget/ImageView;

    const v1, 0x7f020312

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method
