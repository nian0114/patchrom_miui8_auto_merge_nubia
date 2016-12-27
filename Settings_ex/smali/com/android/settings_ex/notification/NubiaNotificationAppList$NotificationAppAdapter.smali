.class Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NubiaNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NubiaNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 240
    iput-object p1, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    .line 241
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 242
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "r"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;
    .param p3, "position"    # I

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;

    .line 279
    .local v1, "vh":Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;
    move-object v0, p2

    .line 280
    .local v0, "row":Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;
    iget-object v2, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 281
    iget-object v2, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->switchView:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 283
    iget-object v2, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->switchView:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-object v3, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mBackend:Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$1100(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 284
    iget-object v2, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->switchView:Lcn/nubia/commonui/widget/NubiaSwitch;

    new-instance v3, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$1;-><init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;)V

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 291
    new-instance v2, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$2;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter$2;-><init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 251
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    .line 257
    .local v0, "r":Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;
    if-nez p2, :cond_0

    .line 258
    invoke-virtual {p0, p3, v0}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->newView(Landroid/view/ViewGroup;Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;)Landroid/view/View;

    move-result-object v1

    .line 262
    .local v1, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;I)V

    .line 263
    return-object v1

    .line 260
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "r"    # Lcom/android/settings_ex/notification/NubiaNotificationAppList$AppRow;

    .prologue
    .line 267
    iget-object v2, p0, Lcom/android/settings_ex/notification/NubiaNotificationAppList$NotificationAppAdapter;->this$0:Lcom/android/settings_ex/notification/NubiaNotificationAppList;

    # getter for: Lcom/android/settings_ex/notification/NubiaNotificationAppList;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings_ex/notification/NubiaNotificationAppList;->access$1300(Lcom/android/settings_ex/notification/NubiaNotificationAppList;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400fb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;-><init>(Lcom/android/settings_ex/notification/NubiaNotificationAppList$1;)V

    .local v1, "vh":Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;
    move-object v2, v0

    .line 269
    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->row:Landroid/view/ViewGroup;

    .line 270
    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 271
    const v2, 0x1020016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    .line 272
    const v2, 0x7f12028c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v2, v1, Lcom/android/settings_ex/notification/NubiaNotificationAppList$ViewHolder;->switchView:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 274
    return-object v0
.end method
