class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    req.headers["Accept"].include?(media_type) || @default
  end

  private

  def media_type
    "application/vnd.finance-tracker.v#{@version}"
  end
end