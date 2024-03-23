import UIKit

final class FeedImageCell: UITableViewCell {

    // MARK: - Outlets

    @IBOutlet private(set) var locationContainer: UIView!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var feedImageView: UIImageView!
    @IBOutlet private(set) var descriptionLabel: UILabel!

    // MARK: - Fake Load

    override func awakeFromNib() {
        super.awakeFromNib()

        feedImageView.alpha = 0
    }

    override func prepareForReuse() {
        super.prepareForReuse()

        feedImageView.alpha = 0
    }

    func fadeIn(_ image: UIImage?) {
        feedImageView.image = image

        UIView.animate(withDuration: 0.5,
                       delay: 0.3,
                       options: []) {
            self.feedImageView.alpha = 1
        }
    }
}
